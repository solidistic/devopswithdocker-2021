FROM node:14-alpine as build-stage

WORKDIR /usr/src/app

COPY ./example-frontend .

RUN npm install && \
    npm run build

FROM node:14-alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install -g serve

EXPOSE 5000

CMD [ "serve", "-s", "-l", "5000", "build" ]
