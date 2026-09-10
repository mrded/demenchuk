# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Personal portfolio/resume site for Dmitry Demenchuk, built with Jekyll and hosted on GitHub Pages at demench.uk. Uses the [sproogen/resume-theme](https://github.com/sproogen/resume-theme) remote theme.

## Commands

```bash
# Install dependencies (first time)
gem install jekyll bundler
bundle install

# Run local dev server (http://localhost:4000)
bundle exec jekyll serve
```

## Architecture

All site content lives in `_data/` as YAML files — this is the primary place to make content edits:

- `_data/experience.yml` — work history
- `_data/education.yml` — education
- `_data/projects.yml` — portfolio projects
- `_data/books.yml` — reading list

`_config.yml` holds site metadata (name, social links, theme settings). The remote theme controls most HTML/CSS; `_layouts/default.html` and `assets/main.scss` are local overrides applied on top of it.
