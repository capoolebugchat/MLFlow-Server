#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.8'
docker build -t $img:$tag .

