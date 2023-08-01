# Use Node.js base image for production
FROM node:16.17.1-alpine as production

# Set the working directory
WORKDIR /home/jenkins-express

# Install app dependencies (only package.json and package-lock.json to leverage caching)
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app source code
COPY . .
RUN rm -rf ./dist

# Set the command to run the app in production mode
CMD ["npm" , "build"]
