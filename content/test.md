---
title: "Test Deployment Page"
date: 2026-01-11T12:00:00Z
summary: "Smoke test content to confirm the site still builds and deploys."
ShowToc: true
categories: ["Diagnostics"]
tags: ["smoke", "ops"]
---

## Why this page exists

Quick placeholder page to prove a new post renders end-to-end. If you can read this at `/test/`, the build pipeline is alive.

## Tiny checklist

- Build runs without Hugo errors.
- Theme assets (CSS/JS) still load.
- Markdown renders lists, emphasis, and links like [PaperMod](https://github.com/adityatelange/hugo-PaperMod).

## Random data

| Scenario | Expectation |
| --- | --- |
| Static build | Generates this page in `public/test/index.html`. |
| Docker image | Serves the page at `/test/` on port 80. |
| GitHub Pages | Publishes the same content under the repo base URL. |

> If anything here looks broken, the pipeline needs attention before shipping real content.
