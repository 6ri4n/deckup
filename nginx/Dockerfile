FROM nginx:1.15-alpine

COPY ./default.conf /etc/nginx/conf.d

COPY --from=build /deckup-client/build /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]