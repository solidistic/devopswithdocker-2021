## 1.14 Environment

```bash
docker build ./frontend -t env-frontend-example
docker build ./backend -t env-backend-example
docker run -d -p 5000:5000 env-frontend-example
docker run -d -p 8080:8080 env-backend-example
```