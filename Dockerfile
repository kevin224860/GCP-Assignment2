# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies (if applicable)
COPY package.json ./
RUN npm install

# Copy all application files into the container
COPY . .

# Expose the correct port (adjust if necessary)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]