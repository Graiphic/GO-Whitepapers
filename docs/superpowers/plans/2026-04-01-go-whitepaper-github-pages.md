# GO Whitepapers GitHub Pages Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a Docsify-based GitHub Pages shell so the repository exposes a browsable whitepaper site with working navigation.

**Architecture:** Keep the repository as a static Markdown and asset collection, then layer Docsify on top at the root with GitHub Pages compatibility files. Normalize per-folder entrypoints to `README.md` so navigation is predictable and stable.

**Tech Stack:** GitHub Pages, Docsify CDN, Markdown, PowerShell verification script

---

### Task 1: Define the expected GitHub Pages structure

**Files:**
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\scripts\verify-github-pages.ps1`

- [ ] **Step 1: Write the failing test**

```powershell
$requiredFiles = @(
  ".nojekyll",
  "index.html",
  "404.html",
  "_sidebar.md",
  "_navbar.md"
)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `powershell -ExecutionPolicy Bypass -File .\scripts\verify-github-pages.ps1`
Expected: FAIL because the root GitHub Pages files and uppercase `README.md` whitepaper entrypoints do not exist yet.

- [ ] **Step 3: Write minimal implementation**

Create the missing GitHub Pages shell files and normalize whitepaper entrypoint filenames.

- [ ] **Step 4: Run test to verify it passes**

Run: `powershell -ExecutionPolicy Bypass -File .\scripts\verify-github-pages.ps1`
Expected: PASS

### Task 2: Add the Docsify shell and navigation

**Files:**
- Modify: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\README.md`
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\index.html`
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\404.html`
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\.nojekyll`
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\_sidebar.md`
- Create: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\_navbar.md`

- [ ] **Step 1: Implement the root Docsify shell**

Add `index.html` with Docsify bootstrap, Graiphic styling, sidebar loading, navbar loading, and path aliases so the home page resolves from the repository root.

- [ ] **Step 2: Add GitHub Pages SPA fallback**

Copy the same shell into `404.html` so direct route refreshes still boot the app on GitHub Pages.

- [ ] **Step 3: Add navigation content**

Write `_sidebar.md` and `_navbar.md` with direct links to the four whitepapers and the home page.

- [ ] **Step 4: Rewrite the landing page**

Refresh `README.md` so it works as a Docsify home page with a short introduction, one section per whitepaper, and visible PDF links.

### Task 3: Normalize whitepaper entrypoints

**Files:**
- Modify: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\SOTA GO\README.md`
- Modify: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\GO HW — From Models to Systems\README.md`
- Modify: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\GO GenAI — From Fragmentation to Orchestration\README.md`
- Modify: `C:\Users\PortableDEV\Desktop\GO_WhitePaper\GO IML — From Theory to Superiority\README.md`

- [ ] **Step 1: Normalize entrypoint filenames**

Rename each folder entrypoint from `readme.md` to `README.md`.

- [ ] **Step 2: Keep page content intact**

Preserve the existing whitepaper summaries and asset/PDF links so Docsify can render them without changing the content model.

- [ ] **Step 3: Re-run verification**

Run: `powershell -ExecutionPolicy Bypass -File .\scripts\verify-github-pages.ps1`
Expected: PASS
