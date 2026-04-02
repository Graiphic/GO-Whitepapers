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
$indexHtml = Get-Content -LiteralPath (Join-Path $repoRoot "index.html") -Raw

foreach ($token in @("GO Whitepaper Series", "SOTA GO", "GO HW", "GO GenAI", "GO IML")) {
    if ($rootReadme -notmatch [regex]::Escape($token)) {
        throw "Root README.md is missing expected content token: $token"
    }
}

foreach ($token in @("function resolveLocalAssetUrl", "function resolveLocalDocLink", "function resolveLocalAssetHref", "hook.beforeEach", "hook.doneEach")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected Docsify asset/link rewrite hook: $token"
    }
}

if ($indexHtml -notmatch [regex]::Escape(".sidebar-nav a[href]")) {
    throw "index.html is missing sidebar link rewriting for Docsify navigation assets"
}

foreach ($token in @("theme-toggle", "function applyTheme", "function ensureThemeToggle")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected theme toggle support: $token"
    }
}

foreach ($token in @("<html lang=""en"" data-theme=""dark"">", "return ""dark"";")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected default dark mode behavior token: $token"
    }
}

foreach ($token in @("#0d1117", "#161b22", "#30363d", "#e6edf3", "#8b949e", "#58a6ff", ".markdown-section strong", ".app-nav a", ".sidebar ul li a")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected GitHub-like dark theme styling token: $token"
    }
}

foreach ($token in @(".markdown-section h1 a", ".markdown-section h2 a", ".markdown-section h3 a")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing heading anchor contrast override: $token"
    }
}

foreach ($token in @("--nav-safe-right", ".app-nav ul", ".app-nav li", "justify-content: center")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing top navigation spacing layout token: $token"
    }
}

foreach ($token in @("width: fit-content", "max-width: calc(100% - var(--nav-safe-right))", "background: transparent", "border-bottom: 0")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing integrated top navigation styling token: $token"
    }
}

foreach ($token in @("--nav-shift-left", "--nav-shift-up", "transform: translate(", "calc(var(--nav-shift-left) * -1)", "calc(var(--nav-shift-up) * -1)")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing explicit desktop left offset for top navigation: $token"
    }
}

if ($indexHtml -notmatch [regex]::Escape("--nav-shift-left: 12rem;")) {
    throw "index.html is missing the expected tuned desktop top navigation offset value"
}

foreach ($token in @("--nav-link-size", "--nav-link-weight", "font-size: var(--nav-link-size)", "font-weight: var(--nav-link-weight)")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected top navigation typography token: $token"
    }
}

Write-Host "GitHub Pages smoke checks passed."
