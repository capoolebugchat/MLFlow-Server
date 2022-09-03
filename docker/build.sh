#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.4'
docker build -t $img:$tag .

