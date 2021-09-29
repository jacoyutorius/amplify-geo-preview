FROM node:alpine3.11

RUN apk update
RUN npm install -g @vue/cli
RUN npm install -g @aws-amplify/cli@geo aws-amplify
# RUN npm install -S maplibre-gl@1 maplibre-gl-js-amplify

WORKDIR /app