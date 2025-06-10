# Start with the official Nginx image
FROM nginx:alpine

# Remove the default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy all your site files to Nginx's HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 (standard web port)
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]