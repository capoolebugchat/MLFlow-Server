#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.7'
docker build -t $img:$tag .

