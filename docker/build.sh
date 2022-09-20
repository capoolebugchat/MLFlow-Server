#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.23'
docker build -t $img:$tag .

docker push $img:$tag

