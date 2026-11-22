# deck-skills one-shot installer (Windows PowerShell)
# Copies every skill into ~/.claude/skills and every agent into ~/.claude/agents.
$ErrorActionPreference = "Stop"
$RepoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsDir = Join-Path $HOME ".claude\skills"
$AgentsDir = Join-Path $HOME ".claude\agents"
New-Item -ItemType Directory -Force -Path $SkillsDir, $AgentsDir | Out-Null

Get-ChildItem -Directory $RepoDir | ForEach-Object {
    if (Test-Path (Join-Path $_.FullName "SKILL.md")) {
        $Dest = Join-Path $SkillsDir $_.Name
        if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
        Copy-Item -Recurse $_.FullName $Dest
        Write-Host "skill installed: $($_.Name)"
    }
}

Get-ChildItem -Path (Join-Path $RepoDir "*\agents\*.md") -ErrorAction SilentlyContinue | ForEach-Object {
    Copy-Item $_.FullName $AgentsDir -Force
    Write-Host "agent installed: $($_.Name)"
}

Write-Host "Done. Start a new Claude Code session to load the skills."
