# hiimmuc.github.io

Personal academic/portfolio website built with [Jekyll](https://jekyllrb.com/) and hosted on [GitHub Pages](https://pages.github.com/).

---

## Table of Contents

- [hiimmuc.github.io](#hiimmucgithubio)
  - [Table of Contents](#table-of-contents)
  - [Repository Structure](#repository-structure)
  - [Modifying Content](#modifying-content)
    - [Site-wide settings](#site-wide-settings)
    - [Pages](#pages)
    - [Blog posts](#blog-posts)
    - [Projects](#projects)
    - [Publications](#publications)
    - [CV / Data files](#cv--data-files)
  - [Local Setup](#local-setup)
    - [Option A: Native Ruby/Jekyll](#option-a-native-rubyjekyll)
    - [Option B: Docker](#option-b-docker)
  - [Deployment](#deployment)
  - [📫 Let's Connect](#-lets-connect)

---

## Repository Structure

```text
_config.yml          # Main site configuration (title, author info, URLs, plugins)
_config_docker.yml   # Overrides url for local Docker preview
Gemfile              # Ruby gem dependencies
Dockerfile           # Docker image definition
docker-compose.yaml  # Docker Compose config for local preview

_data/               # Structured data files (navigation, CV, authors)
_pages/              # Static pages (about, CV, publications, projects, etc.)
_pages_content/      # Markdown source for page body content
_posts/              # Blog posts (YYYY-MM-DD-title.md)
_projects/           # Project entries (one .md file per project)
_publications/       # Publication entries (one .md file per publication)
_includes/           # Reusable HTML partials
_layouts/            # Page layout templates
assets/              # JS, CSS overrides
images/              # Images used across the site
files/               # Downloadable files (e.g. CV PDF)
```

---

## Modifying Content

### Site-wide settings

Edit `_config.yml` to update:

- `title`, `name`, `description`, `url`
- `author` block: avatar, bio, social links, email, ORCID, GitHub, etc.
- Navigation and plugin settings

### Pages

- Static page HTML/front matter: `_pages/<page>.html`
- Page body content (Markdown): `_pages_content/<page>.md`

### Blog posts

Create a new file in `_posts/` following the naming convention:

```
_posts/YYYY-MM-DD-your-post-title.md
```

Minimal front matter:

```yaml
---
title: "Post Title"
date: YYYY-MM-DD
permalink: /posts/YYYY/MM/your-post-title/
tags:
  - tag1
---
```

### Projects

Add a new `.md` file to `_projects/`:

```yaml
---
title: "Project Title"
excerpt: "Short description"
collection: projects
date: YYYY-MM-DD
header:
  teaser: images/your-image.png
---
Full project description here.
```

### Publications

Add a new `.md` file to `_publications/`:

```yaml
---
title: "Paper Title"
collection: publications
permalink: /publication/YYYY-MM-DD-short-title
date: YYYY-MM-DD
venue: "Conference or Journal Name"
paperurl: "https://link-to-paper"
excerpt: "Brief abstract or summary."
---
```

### CV / Data files

- CV JSON data: `_data/cv.json`
- Navigation menus: `_data/navigation.yml`

---

## Local Setup

### Option A: Native Ruby/Jekyll

**Prerequisites:** Ruby ≥ 3.0, Bundler

```bash
# Install dependencies
bundle install

# Serve with live reload
bundle exec jekyll serve -l -H localhost --config _config.yml

# Site available at http://localhost:4000
```

### Option B: Docker

**Prerequisites:** Docker, Docker Compose

```bash
# Build and start the container
docker compose up --build

# Site available at http://localhost:4000
```

The Docker setup mounts the repo directory into the container, so file changes are reflected live.

---

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the `master` branch.

```bash
git add .
git commit -m "your commit message"
git push origin master
```

GitHub Actions (or the built-in GitHub Pages Jekyll builder) will rebuild and publish the site at `https://hiimmuc.github.io` within a few minutes.

> **Note:** Only commit built assets and source files. The `_site/` directory is generated automatically by GitHub Pages and does not need to be committed.

---

## 📫 Let's Connect

LinkedIn: <a href="https://www.linkedin.com/in/phgnam-dang/"> Phgnam Dang </a> </br>
Email: <a href="https://www.linkedin.com/in/phgnam-dang/"> phgnam1811.vn@gmail.com </a> </br>
LeetCode: <a href="https://www.leetcode.com/hiimmuc"> hiimmuc </a> </br>
HackerRank: <a href="https://www.hackerrank.com/hi_im_muc"> hi_im_muc </a> </br>

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=hiimmuc&label=Profile%20views&color=0e75b6&style=flat" alt="hiimmuc" />
</p>
