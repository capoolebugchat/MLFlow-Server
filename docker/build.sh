#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.13'
docker build -t $img:$tag .

docker push $img:$tag

