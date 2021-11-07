FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY ./example-backend .

EXPOSE 8080

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
ENV REDIS_HOST=3-4-redis

RUN apt-get update && apt-get install -y curl tar && \
    curl -LO https://golang.org/dl/go1.16.6.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz && \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* && \
    rm /usr/src/app/*.tar.gz && \
    go build && \
    rm -rf /usr/local/go && \
    mv /usr/src/app/server /tmp/ && \
    cd .. && rm -rf app && mkdir app && cd app && mv /tmp/server .

CMD ["./server"]
