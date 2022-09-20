#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.22'
docker build -t $img:$tag .

docker push $img:$tag

