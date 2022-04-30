#!usr/bin/env bash

# aws iam create-role --role-name lambda-example-87 --assume-role-policy-document '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"lambda.amazonaws.com"},"Action":"sts:AssumeRole"}]}'
aws iam create-role --role-name go_lambda --assume-role-policy-document file://trust-policy.json
# aws iam attach-role-policy --role-name lambda-example-87 --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
echo policy created 
