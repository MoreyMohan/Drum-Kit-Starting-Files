# Use official nginx image as the base
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 (nginx default)
EXPOSE 80