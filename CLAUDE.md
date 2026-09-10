# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Personal portfolio/resume site for Dmitry Demenchuk, built with Next.js and hosted at demench.uk. Uses the [sproogen/resume-theme](https://github.com/sproogen/resume-theme) CSS (Bootstrap 3 + Roboto + Font Awesome), loaded from CDN.

## Commands

```bash
# Install dependencies (first time)
npm install

# Run local dev server (http://localhost:3000)
npm run dev

# Production build
npm run build
```

## Architecture

All site content lives in `data/` as JS files — this is the primary place to make content edits:

- `data/experience.js` — work history
- `data/education.js` — education
- `data/projects.js` — portfolio projects
- `data/books.js` — reading list (data kept but not rendered)
- `data/siteMetadata.js` — site config (name, social links, about text, email)

`pages/index.js` is the single page that renders everything: header, about, projects, experience, education, more section, and footer. It matches the HTML structure expected by the sproogen/resume-theme CSS (Bootstrap 3 grid classes, `layout-left`, `layout-top-middle`, etc.).

`styles/` holds the theme SCSS copied from the sproogen/resume-theme repo — `main.scss` is the entry point, which imports `_base`, `_button`, `_type`, `_dark`, and `_icons`. The base SCSS pulls Bootstrap 3, Roboto, and Font Awesome from CDN.
