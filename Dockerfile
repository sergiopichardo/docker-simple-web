# Specify base image 
FROM node:alpine

# Specify work directory 
WORKDIR /usr/app

# Copy all files into Docker image
COPY ./package*.json ./

# Install dependencies
RUN npm install

COPY ./ ./

# Default command 
CMD ["npm", "start"]