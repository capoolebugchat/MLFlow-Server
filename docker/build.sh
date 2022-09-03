#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.9'
docker build -t $img:$tag .

