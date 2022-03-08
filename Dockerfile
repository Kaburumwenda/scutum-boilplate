# get the base node image
FROM node:16.13.0-alpine as builder

# set the working dir for container
WORKDIR /app

# copy the json file first
COPY ./package.json /app

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

# build the folder
RUN npm run build

# # Handle Nginx
# FROM nginx
# COPY --from=builder /app/dist /usr/share/nginx/html
# COPY ./devops/nginx.conf /etc/nginx/conf.d/default.conf

# Dockerfile
# FROM node:16.13.0-alpine

# create destination directory
# RUN mkdir -p /usr/src/app

# update and install dependency
# RUN apk update && apk upgrade

# copy the app, note .dockerignore
# COPY --from=builder /app/nuxt-dist /usr/src/app

EXPOSE 80

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=80

CMD [ "npm", "start" ]