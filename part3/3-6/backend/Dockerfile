FROM golang:1.17-alpine3.14

WORKDIR /usr/src/app

COPY ./example-backend .

EXPOSE 8080

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
ENV REDIS_HOST=3-6-redis

RUN go build && \
    mv /usr/src/app/server /tmp/ && \
    cd .. && rm -rf app && mkdir app && cd app && mv /tmp/server .

CMD ["./server"]
