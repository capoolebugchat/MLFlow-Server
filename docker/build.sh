#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.3'
docker build -t $img:$tag .

