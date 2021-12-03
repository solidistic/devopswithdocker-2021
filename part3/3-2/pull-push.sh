#!/bin/sh

echo "DevOps with Docker 2021 -- 3.2"
docker-compose up -d
docker push solidistic/devops-3-2
echo "Done..."