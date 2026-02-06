# Use Node.js LTS as base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY app/package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY app/ .

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
