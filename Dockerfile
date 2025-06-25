# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy application source
COPY . .

# Application will run on port 3000
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]