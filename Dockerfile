# Use the official, lightweight Nginx image
FROM nginx:alpine

# Copy your HTML file into Nginx's public folder
COPY index.html /usr/share/nginx/html/index.html

# Open port 80 for standard HTTP traffic
EXPOSE 80
