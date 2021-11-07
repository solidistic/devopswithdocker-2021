FROM node:14-alpine

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install -g serve && \
    npm install && \
    npm run build && \
    mv /usr/src/app/build /tmp/ && \
    cd .. && rm -rf app && mkdir app && cd app && mv /tmp/build .

CMD [ "serve", "-s", "-l", "5000", "build" ]
