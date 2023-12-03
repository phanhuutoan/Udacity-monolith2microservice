#!/bin/bash

docker build ./udagram-api-feed -t superknife0512/uda-backend-feed -t superknife0512/uda-backend-feed:v1 &
docker build ./udagram-api-user -t superknife0512/uda-backend-user -t superknife0512/uda-backend-user:v1 &
docker build ./udagram-frontend -t superknife0512/uda-micro-frontend -t superknife0512/uda-micro-frontend:v1 &
docker build ./udagram-reverseproxy -t superknife0512/uda-reverse-proxy -t superknife0512/uda-reverse-proxy:v1

docker push superknife0512/uda-backend-feed:v1 &
docker push superknife0512/uda-backend-user:v1 &
docker push superknife0512/uda-micro-frontend:v1 &
docker push superknife0512/uda-reverse-proxy:v1

docker push superknife0512/uda-backend-feed &
docker push superknife0512/uda-backend-user &
docker push superknife0512/uda-micro-frontend &
docker push superknife0512/uda-reverse-proxy