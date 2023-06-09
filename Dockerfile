# This file is a template, and might need editing before it works on your project.
FROM node:8.11

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

# replace this with your application's default port
EXPOSE 8080
CMD [ "node", "app.js" ]
