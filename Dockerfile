# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application code to the container's working directory
COPY app.js .

# Install dependencies
RUN npm init -y && npm install http

# Expose the port on which the application will listen
EXPOSE 3000

# Command to run the Node.js application
CMD ["node", "app.js"]

