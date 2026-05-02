# Call of Duty Info Site

A static website providing information about Call of Duty Mobile, including guns, maps, and game modes.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine using Docker.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Deployment with Docker

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/callofdutyinfo.github.io.git
   cd callofdutyinfo.github.io
   ```

2. **Build and start the container:**
   ```bash
   docker-compose up -d --build
   ```

3. **Access the website:**
   Open your browser and navigate to `http://localhost:8080`.

### Stopping the site

To stop and remove the containers:
```bash
docker-compose down
```

## Project Structure

- `index.html`, `*.html`, `*.css`: Core website files located in the root.
- `images/`, `maps/`, `character/`, `guns video/`, `BR Maps/`: Asset directories.
- `nginx.conf`: Custom Nginx configuration for optimized serving.
- `Dockerfile`: Docker image definition.
- `docker-compose.yml`: Docker Compose configuration for easy management.
- `package.json`: Local development scripts (BrowserSync, Linting, Formatting).
- `manifest.json` & `service-worker.js`: PWA features for mobile installability and offline support.
- `robots.txt` & `sitemap.xml`: SEO optimizations.
- `404.html` & `50x.html`: Custom themed error pages.
