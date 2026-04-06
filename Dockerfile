# Use the official, lightweight Nginx image
FROM nginx:alpine

# Copy your HTML file into Nginx's public folder
COPY index.html /usr/share/nginx/html/index.html

# Open port 80 for standard HTTP traffic
EXPOSE 80

# THE MAGIC TRICK:
# When the container boots up, find "APP_COLOR_PLACEHOLDER" and replace it with the real environment variable, then start Nginx.
CMD sed -i "s/APP_COLOR_PLACEHOLDER/${APP_COLOR}/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"