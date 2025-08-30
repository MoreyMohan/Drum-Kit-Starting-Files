FROM node:18-slim

# Install http-server globally
RUN npm install -g http-server

# Set working directory
WORKDIR /usr/src/app

# Copy all files (HTML, JS, MP3, etc.)
COPY . .

# Expose port 8080
EXPOSE 8080

# Start http-server, serving current directory
CMD ["http-server", "-p", "8080"]