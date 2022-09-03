#!/bin/bash

img='capoolebugchat/mlflow-server'
tag='0.11'
docker build -t $img:$tag .

