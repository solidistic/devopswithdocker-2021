## 1.9 Volumes

```bash
touch text.log && docker run -v "$(pwd)"/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
```