## 1.10 Ports open

```bash
docker run -p 8080:8080 devopsdockeruh/simple-web-service server
```

```
curl localhost:8080
{"message":"You connected to the following path: /","path":"/"}%  
```