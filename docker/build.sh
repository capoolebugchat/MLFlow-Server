#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.6'
docker build -t $img:$tag .

