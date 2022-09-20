# from https://github.com/flmu/mlflow-tracking-server

FROM capoolebugchat/mlflow-server:0.4

RUN pip3 install --upgrade pip && \
    pip3 install mlflow --upgrade && \
    pip3 install awscli --upgrade  && \
    pip3 install boto3 --upgrade && \
    # pip3 install mysqlclient --upgrade && \
    pip3 install psycopg2 --upgrade

ENV PORT 5000
ENV AWS_BUCKET bucket
ENV AWS_ACCESS_KEY_ID aws_id
ENV AWS_SECRET_ACCESS_KEY aws_key

ENV FILE_DIR /tmp/mlflow

RUN mkdir -p /opt/mlflow

COPY run.sh /opt/mlflow
RUN chmod -R 777 /optsh/mlflow/

ENTRYPOINT ["/opt/mlflow/run.sh"]