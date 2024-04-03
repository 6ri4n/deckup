FROM node:18-alpine3.18 AS build

WORKDIR /deckup-client

COPY ./deckup-client/package*.json .

RUN npm install

COPY ./deckup-client/. .

RUN npm run build

FROM nginx:stable-alpine

COPY ./nginx/default.conf /etc/nginx/conf.d

COPY --from=build /deckup-client/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]