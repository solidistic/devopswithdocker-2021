## Commands to get the secret message

```bash
docker run -d -it --rm --name secret-message devopsdockeruh/simple-web-service:ubuntu

docker exec -it secret-message bash

tail -f ./text.log
```

## Output

```bash
2021-07-07 20:53:26 +0000 UTC
2021-07-07 20:53:28 +0000 UTC
2021-07-07 20:53:30 +0000 UTC
2021-07-07 20:53:32 +0000 UTC
2021-07-07 20:53:34 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-07-07 20:53:36 +0000 UTC
2021-07-07 20:53:38 +0000 UTC
2021-07-07 20:53:40 +0000 UTC
2021-07-07 20:53:42 +0000 UTC
2021-07-07 20:53:44 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```