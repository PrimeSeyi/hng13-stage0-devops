# Use a lightweight Nginx image
FROM nginx:alpine

# Copy our custom HTML file into the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 internally
EXPOSE 80