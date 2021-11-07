FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY ./example-backend .

EXPOSE 8080

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost:5000

RUN apt update && apt install -y curl tar
RUN curl -LO https://golang.org/dl/go1.16.6.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz
RUN go build

CMD ["./server"]
