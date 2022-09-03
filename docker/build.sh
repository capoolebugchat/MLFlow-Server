#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.5'
docker build -t $img:$tag .

