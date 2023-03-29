# Use an official Node runtime as a parent image
FROM alpine

# Set the working directory to /app
WORKDIR /app

RUN apk add --update nodejs npm

# Copy package.json and package-lock.json to the container
COPY package*.json /app

# Install dependencies
RUN npm install

EXPOSE 3000
#copy node modules from the container
#COPY /home/app/node_modules /home/ubuntu
# Copy the rest of the application code to the container
# Build the application for production
RUN npm run
CMD ["npm", "start"]
