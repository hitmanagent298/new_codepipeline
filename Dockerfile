# Base image
FROM node:16-alpine

# Set the working directory
WORKDIR /server

# Copy package.json and package-lock.json
COPY package*.json .

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose the port
EXPOSE 3001

# Start the application
ENTRYPOINT [ "npm", "run", "dev" ]