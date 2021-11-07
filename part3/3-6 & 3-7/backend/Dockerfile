FROM golang:1.17-alpine3.14 as build-stage

WORKDIR /usr/src/app

COPY ./example-backend .

RUN go build

FROM amd64/alpine:latest

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/server server

EXPOSE 8080

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
ENV REDIS_HOST=3-6-redis

CMD ["./server"]
