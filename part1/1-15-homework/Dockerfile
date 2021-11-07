FROM ubuntu:18.04

EXPOSE 3000

# Get API key from https://darksky.net/
# ENV DARKSKY_API_KEY=
# ENV MAPBOX_API_KEY=

WORKDIR /usr/src/app

COPY ./weather-app .

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
RUN npm install

CMD ["node", "src/app.js"]
