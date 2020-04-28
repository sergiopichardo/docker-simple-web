# Specify base image 
FROM node:alpine

# Define working directory
WORKDIR /app/

# copy dependencies file 
COPY package*.json index.js ./ 

# install some dependencies 
RUN npm install

# Copy everything else
COPY ./ ./

# Default command 
CMD ["npm", "start"]

