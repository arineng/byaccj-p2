#!/bin/sh

TAG=docker-reg.arin.net:5000/job/byaccj:1.15

docker build -t $TAG .
docker push $TAG