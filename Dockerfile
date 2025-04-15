# Use an Nginx base image
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy custom files
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80
