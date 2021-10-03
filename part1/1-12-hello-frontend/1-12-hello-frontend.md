## 1.13 Hello, frontend!

Materials project was forked and cloned to this repository (added to gitignore). I copied `example-frontend` to this folder to be used in the container.

```bash
git clone git@github.com:solidistic/material-applications.git
```

```bash
docker build . -t example-frontend
docker run -d -p 5000:5000 example-frontend
```