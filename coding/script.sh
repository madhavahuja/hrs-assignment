#!/bin/bash

# Configure REDIS
REDIS_HOST="<REDIS_HOST>"
REDIS_PORT=6379
REDIS_PASSWORD="<REDIS_PASSWORD>"

# Configure S3
S3_BUCKET="<BUCKET_NAME>"
S3_PREFIX="<DIRECTORY_PATH>"
AWS_ACCESS_KEY="<ACCESS_KEY>"
AWS_SECRET_KEY="<SECRET_KEY>"
AWS_REGION="<REGION>"

CSV_FILE="redis_data.csv"

REDIS_DATA=$(redis-cli -h $REDIS_HOST -p $REDIS_PORT -a $REDIS_PASSWORD GET <KEY:VALUE>)

# Convert TO CSV
echo "$REDIS_DATA" > $CSV_FILE

# Upload files to S3
aws configure set aws_access_key_id $AWS_ACCESS_KEY
aws configure set aws_secret_access_key $AWS_SECRET_KEY
aws configure set default.region $AWS_REGION

aws s3 cp $CSV_FILE s3://$S3_BUCKET/$S3_PREFIX/data.csv
aws s3 cp $JSON_FILE s3://$S3_BUCKET/$S3_PREFIX/data.json

