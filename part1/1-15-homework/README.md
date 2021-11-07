## Weather App

Docker hub link: https://hub.docker.com/repository/docker/solidistic/weather-app

1. Get Darksky API key from https://darksky.net/ & Mapbox API key from https://account.mapbox.com/
2. Create `.env` file and add `DARKSKY_API_KEY` and `MAPBOX_API_KEY` variables
3. `docker pull solidistic/weather-app` OR `docker build . -t solidistic/weather-app`
4. Run `docker run -d -it -p 3000:3000 --env-file ./.env solidistic/weather-app`
5. Go to http://localhost:3000
6. Check weather wherever you want!
