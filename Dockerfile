# Use official NGINX image as the base
FROM nginx:alpine

# Remove the default NGINX welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80 (NGINX's default port)
EXPOSE 80

# NGINX automatically starts when the container runs