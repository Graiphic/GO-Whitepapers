$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot

$requiredFiles = @(
    ".nojekyll",
    "index.html",
    "404.html",
    "_sidebar.md",
    "_navbar.md",
    "assets\\open-github-pages-banner.svg"
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
$bannerSvg = Get-Content -LiteralPath (Join-Path $repoRoot "assets\\open-github-pages-banner.svg") -Raw

foreach ($token in @("GO Whitepaper Series", "SOTA GO", "GO HW", "GO GenAI", "GO IML")) {
    if ($rootReadme -notmatch [regex]::Escape($token)) {
        throw "Root README.md is missing expected content token: $token"
    }
}

foreach ($token in @(
    "SOTA%20GO_cover.png",
    "GO-HW_cover.PNG",
    "GO-GenAI_cover.PNG",
    "GO%20IML_cover.png",
    'class="go-card-cover-link"',
    'class="go-card-cover"'
)) {
    if ($rootReadme -notmatch [regex]::Escape($token)) {
        throw "Root README.md is missing expected whitepaper cover card token: $token"
    }
}

foreach ($token in @(
    '<div class="go-pages-link" data-render-target="github">',
    './assets/open-github-pages-banner.svg',
    '# Graiphic GO Whitepaper Series'
)) {
    if ($rootReadme -notmatch [regex]::Escape($token)) {
        throw "Root README.md is missing expected contextual repository/pages link token: $token"
    }
}

if ($rootReadme -match [regex]::Escape('data-render-target="pages"')) {
    throw 'Root README.md should no longer include a GitHub-return link block for GitHub Pages'
}

foreach ($token in @('stroke-linejoin="round"', 'M63 73c8-3 18-3 27 3v29c-8-5-18-6-27-3z', 'M92 76v29')) {
    if ($bannerSvg -notmatch [regex]::Escape($token)) {
        throw "Banner SVG is missing expected book icon token: $token"
    }
}

if ($bannerSvg -match [regex]::Escape('M87 72h18l-2 18h18v18h-18l2 18H87l-2-18H67V90h18z')) {
    throw 'Banner SVG should no longer contain the old cross icon path'
}

foreach ($token in @("function resolveLocalAssetUrl", "function resolveLocalDocLink", "function resolveLocalAssetHref", "hook.beforeEach", "hook.doneEach")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected Docsify asset/link rewrite hook: $token"
    }
}

foreach ($token in @("var validSearchPaths =", "paths: validSearchPaths", "function canonicalizeSearchResultHref", "function sanitizeSearchResults", "MutationObserver", '.search .results-panel')) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected search result filtering token: $token"
    }
}

foreach ($token in @('README$/i.test(normalized)', 'normalized += ".md";')) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected Docsify README route normalization token: $token"
    }
}

foreach ($token in @("function canonicalizeDocPath", "decodeURIComponent", "encodeURI", "namespace: ""go-whitepapers-search-v2""")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected canonical search path token: $token"
    }
}

foreach ($token in @("function updateRenderContextLinks", 'data-render-context', 'updateRenderContextLinks("pages")', ".markdown-section .go-pages-link", "display: none !important")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected contextual README link toggle support: $token"
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

foreach ($token in @(".sidebar .app-sub-sidebar li:before", "content: none")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected sidebar sub-navigation dash removal token: $token"
    }
}

foreach ($token in @(".sidebar-toggle {", "background: var(--sidebar-bg);", "border-top: 1px solid var(--sidebar-bg);", "box-shadow: none;", "body.close .sidebar-toggle")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected themed mobile sidebar toggle token: $token"
    }
}

foreach ($token in @(".sidebar .app-sub-sidebar a", '.sidebar-nav a[href$=".pdf"]', "text-underline-offset")) {
    if ($indexHtml -match [regex]::Escape($token)) {
        throw "index.html should not force emphasized sidebar link styling token: $token"
    }
}

foreach ($token in @(".markdown-section .go-card-cover-link", ".markdown-section .go-card-cover", "object-fit: cover", "aspect-ratio")) {
    if ($indexHtml -notmatch [regex]::Escape($token)) {
        throw "index.html is missing expected whitepaper cover card styling token: $token"
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
