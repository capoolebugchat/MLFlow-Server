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
    --artifacts-destination "s3://$AWS_BUCKET/artifacts" \
    --serve-artifacts \
    --artifacts-only \    
    --host 0.0.0.0 \
    --port "$PORT"
  
# --backend-store-uri "$SQLDB://$SQLDB_USER:$SQLDB_PASSWORD@$SQLDB_ENDPOINT/$SQLDB_DATABASE" \
