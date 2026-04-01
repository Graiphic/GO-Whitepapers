# GO Whitepapers GitHub Pages Design

**Date:** 2026-04-01

## Goal

Turn the `Graiphic/GO-Whitepapers` repository into a browsable GitHub Pages documentation site instead of a single landing page with raw file links.

## Current State

- The repository contains four whitepaper folders with PDFs, images, and Markdown summaries.
- The repository has no GitHub Pages shell files such as `index.html`, `404.html`, `.nojekyll`, `_sidebar.md`, or `_navbar.md`.
- Several whitepaper folders use `readme.md` instead of `README.md`, which is brittle for Docsify-style routing and GitHub Pages navigation.

## Desired Outcome

- A Docsify-based GitHub Pages shell at the repository root.
- A landing page that presents the series and links to each whitepaper page and PDF.
- A sidebar and top navbar that expose all four whitepapers directly.
- Each whitepaper folder rendered as a navigable documentation page through `README.md`.
- GitHub Pages compatibility through `.nojekyll` and `404.html`.

## Approach

Use a lightweight Docsify setup modeled after `TestDocGraiphicV2_publish`, but scoped to the whitepaper collection:

- Add a root `index.html` with Docsify bootstrap and Graiphic-themed styling.
- Add `404.html` as a GitHub Pages SPA fallback.
- Add `_sidebar.md` and `_navbar.md` for navigation.
- Refresh the root `README.md` so it works as the home page inside Docsify.
- Rename each whitepaper `readme.md` file to `README.md`.

## Non-Goals

- No custom build pipeline.
- No conversion away from Markdown/PDF assets.
- No deep content rewrite of the whitepapers beyond link and presentation cleanup.
