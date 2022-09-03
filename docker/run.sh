#!/bin/sh

set -e

if [ -z "${AWS_BUCKET}" ]; then
  echo >&2 "AWS_BUCKET must be set"
  exit 1
fi

if [ -z "${AWS_ACCESS_KEY_ID}" ]; then
  echo >&2 "AWS_ACCESS_KEY_ID must be set"
  exit 1
fi

if [ -z "${AWS_SECRET_ACCESS_KEY}" ]; then
  echo >&2 "AWS_SECRET_ACCESS_KEY must be set"
  exit 1
fi

mkdir -p "${FILE_DIR}"

mlflow server \
    --backend-store-uri "mysql+mysqldb://$MLFLOW_MYSQL_USERNAME:$MLFLOW_MYSQL_PASSWORD@mysql.kubeflow.svc.cluster.local:3306/$MLFLOW_MYSQL_DB" \
    --default-artifact-root "s3://$AWS_BUCKET/mlflow/artifacts" \
    --host 0.0.0.0 \
    --port "$PORT"
