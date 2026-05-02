# Use a lightweight Nginx image
FROM nginx:alpine

# Install curl for healthcheck
RUN apk add --no-cache curl

# Copy the custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static website files to the Nginx HTML directory
COPY callofdutyinfo.github.io/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Healthcheck to ensure the server is running
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
