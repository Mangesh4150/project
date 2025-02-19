# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY src/main/webaps/package*.json /app/

# Install Node.js dependencies
RUN npm install

# Copy the entire application code into the container
COPY . /app

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]

