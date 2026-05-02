# Use the official Node.js 18 image as the base
FROM node:18-slim

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# Install all dependencies (including devDependencies for build)
ENV NODE_ENV=development
RUN npm install

# Copy local code to the container image
COPY . .

# Build the Vite application
RUN npm run build

# Set back to production for runtime
ENV NODE_ENV=production

# Expose the port the app runs on
EXPOSE 8080

# Start the server
CMD ["npm", "start"]
