$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot

$requiredFiles = @(
    ".nojekyll",
    "index.html",
    "404.html",
    "_sidebar.md",
    "_navbar.md"
)

$whitepaperFolders = @(
    "SOTA GO",
    "GO HW*",
    "GO GenAI*",
    "GO IML*"
)

$missing = @()

foreach ($relativePath in $requiredFiles) {
    $fullPath = Join-Path $repoRoot $relativePath
    if (-not (Test-Path -LiteralPath $fullPath)) {
        $missing += $relativePath
    }
}

foreach ($folderPattern in $whitepaperFolders) {
    $folder = Get-ChildItem -LiteralPath $repoRoot -Directory | Where-Object { $_.Name -like $folderPattern } | Select-Object -First 1
    if (-not $folder) {
        $missing += "$folderPattern folder"
        continue
    }

    $readmePath = Join-Path $folder.FullName "README.md"
    if (-not (Test-Path -LiteralPath $readmePath)) {
        $missing += "$($folder.Name)\\README.md"
    }
}

if ($missing.Count -gt 0) {
    throw "Missing expected GitHub Pages files:`n - $($missing -join "`n - ")"
}

$rootReadme = Get-Content -LiteralPath (Join-Path $repoRoot "README.md") -Raw

foreach ($token in @("GO Whitepaper Series", "SOTA GO", "GO HW", "GO GenAI", "GO IML")) {
    if ($rootReadme -notmatch [regex]::Escape($token)) {
        throw "Root README.md is missing expected content token: $token"
    }
}

Write-Host "GitHub Pages smoke checks passed."
