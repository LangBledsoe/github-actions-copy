# Specify the node base image with your desired version node:<version>
# Each Dockerfile must begin with a FROM instuciton
FROM node:16

# The app directory created to be used as the location within the container
# You can make this whatever you want, but this seems to be a common convention
WORKDIR /usr/src/app

# Copies package.json and package-lock.json to the directory I made
# Installs dependencies first, since it makes rebuilding the container go faster
COPY package*.json ./

# Installs app dependencies
RUN npm install

# Bundles the app's source code to the directory I made
COPY . .

# Expose the port the app runs on
# This is really just a documentation mechanism
# This instuction doesn't result in a port being automatically bound when the container starts
EXPOSE 3000

# The command that gets run when the container is ready
# Each value in the array is a seperate argument in the command line
CMD ["node", "app.js"]