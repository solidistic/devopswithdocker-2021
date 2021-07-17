## First try

First I started the container with the command in the description. And installed curl manually via bash. I opened second terminal and printed container logs there (`docker logs -f missing-dep`).

```bash
docker run -it -d --name missing-dep ubuntu sh -c '
echo "Input website:"; read website; echo "Searching..."; sleep 1; curl http://$website;'

docker exec -it missing-dep bash

apt update
apt install curl
exit

docker attach missing-dep

helsinki.fi
```

Result output was the following:

```bash
Input website:
helsinki.fi
Searching...
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="https://www.helsinki.fi/">here</a>.</p>
</body></html>
```

## Second try

This time I decided to try to include the curl installation on the first shell command so we don't have to do it manually via bash.

```bash
docker run -it -d --name missing-dep ubuntu sh -c 'apt update; apt install -y curl; echo "Input website:"; read website; echo "Searching..."; sleep 1; curl http://$website;'
```

No errors occurred when attached to container and wrote the address to the console. Output was the same as above.