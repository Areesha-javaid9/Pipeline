# Use the lightweight Nginx image
FROM nginx:latest

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio file to the nginx server directory
# If your file is named index.html, it will be the entry point
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
