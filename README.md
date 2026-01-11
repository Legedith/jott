# Revision Notes (Hugo + PaperMod)

Static site built with Hugo Extended 0.154.4 and the PaperMod theme.

## Quick start (Docker)

```sh
docker build -t jott-site .
docker run --rm -p 1313:80 jott-site
```

Open http://localhost:1313/ to view the site. To override the base URL:

```sh
docker build -t jott-site --build-arg HUGO_BASEURL=https://legedith.github.io/jott/ .
```

## Local dev (optional, without Docker)

Install Hugo Extended 0.154.4. Then:

```sh
hugo server -D --baseURL http://localhost:1313/ --appendPort=false
```

## Deploy (GitHub Pages)

GitHub Actions workflow `.github/workflows/hugo.yaml` builds with Hugo 0.123.0, minifies, and publishes `public/` to GitHub Pages on push to `master` (submodules are fetched recursively).

## Notes

- Theme submodule: `notes/themes/PaperMod` (see `.gitmodules`).
- Build output is generated; avoid committing `public/` if you build locally.
