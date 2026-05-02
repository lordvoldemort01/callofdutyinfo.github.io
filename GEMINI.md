# Project Instructions: Call of Duty Info Site

## Architecture Overview
This is a static website containerized using Nginx. It is designed to be lightweight, secure, and performant, following Progressive Web App (PWA) standards.

## Tech Stack
- **Web Server:** Nginx (Alpine-based Docker image)
- **Frontend:** Vanilla HTML5, CSS3, JavaScript
- **Containerization:** Docker & Docker Compose
- **CI/CD:** GitHub Actions (Docker build validation)
- **Dev Tools:** BrowserSync, Prettier, HTMLHint, Stylelint

## Development Workflow
- **Local Dev (Live Reload):** `npm install` then `npm start`
- **Docker Dev:** `docker-compose up -d` (uses live volume mounting)
- **Code Quality:** 
  - `npm run lint` for HTML/CSS validation
  - `npm run format` for Prettier formatting
- **Adding Assets:** Place new images in `/images`, maps in `/maps`, and character assets in `/character`.

## Conventions & Style
- **Naming:** Kebab-case for file names and image assets.
- **HTML:** Maintain semantic structures and include descriptive `alt` tags for all images.
- **CSS:** Adhere to the established styling in `style.css` and use specific `.css` files for gun/map pages.
- **PWA:** Any new core pages must be added to the `ASSETS` array in `service-worker.js` and the `sitemap.xml`.

## Docker Configuration
- **Base Image:** `nginx:alpine`
- **Security:** Nginx is configured with strict security headers (CSP, X-Frame-Options, etc.).
- **Performance:** Gzip compression and 30-day static asset caching are enabled in `nginx.conf`.
- **Healthcheck:** Dockerfile includes a curl-based healthcheck on port 80.

## Documentation
- Maintain the `README.md` with setup instructions.
- Ensure `CONTRIBUTING.md` is updated if workflows change.
