# Use Node.js base image for development
FROM node:16.17.1-alpine as development

RUN npm install -g nodemon

# Set the working directory
WORKDIR /home/jenkins-express

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app source code
COPY . .

# Set the command to run the app in development mode
CMD ["npm", "start"]
