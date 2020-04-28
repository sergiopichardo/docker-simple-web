# Specify base image 
FROM node:alpine

# Copy all files into Docker image
COPY ./ ./

# Install dependencies
RUN npm install

# Default command 
CMD ["npm", "start"]

