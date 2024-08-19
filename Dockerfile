# First stage - Building the application
# Use node:16-a;pine image as a parent image
#FROM node:16-alpine AS build
FROM node:latest AS build

# Create app directory
#WORKDIR /usr/src/app
WORKDIR /react-docker

# Copy package.json files to the working directory
#COPY package*.json ./

# Copy the source files
COPY . .

# Install app dependencies
RUN npm install

# Build the React app for production
RUN npm run build

# Second stage - Serve the application
#FROM nginx:alpine
FROM nginx:latest

# Copy build files to Nginx
COPY --from=build /react-docker/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



