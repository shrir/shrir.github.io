# shrir.github.io

Personal website built with Emacs Org mode, deployed to GitHub Pages.

## Build Locally

```bash
emacs --batch -Q -l publish.el
```

This exports `index.org` to `public/index.html` and copies the stylesheet.

## Deploy

Push to `main` branch - GitHub Actions handles deployment automatically.

## Stack

- **Editor**: Emacs (Org mode)
- **Export**: `ox-html` (Org to HTML)
- **Hosting**: GitHub Pages
- **Style**: Doom Emacs aesthetic