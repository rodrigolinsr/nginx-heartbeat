# Use the official Nginx image as a base
FROM nginx:latest

# Adding wget to the container, so we can run Coolify's internal Healthcheck
RUN apt update \
  && apt install -y wget \
  && rm -rf /var/lib/apt/lists/*

# Copy the custom index.html file to the correct location
COPY index.html /usr/share/nginx/html/index.html
