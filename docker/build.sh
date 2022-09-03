#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.2'
docker build -t $img:$tag .

