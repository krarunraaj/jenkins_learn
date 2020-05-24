# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
COPY ./app.js ./
#RUN npm install
RUN npm install -g express-generator
RUN npm install express --save

COPY ./ ./

# Default command
CMD ["node", "app.js"]                    
