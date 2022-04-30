#!usr/bin/env bash
source lambda_policy.sh
go mod tidy
go build main.go
#install zip if not available
zip function.zip main

#deploy.sh account_id
aws lambda create-function --function-name go_lambda \
--zip-file fileb://function.zip --handler main --runtime go1.x \
--role arn:aws:iam::$1:role/go_lambda

aws lambda invoke --function-name go_lambda --cli-binary-format raw-in-base64-out --payload '{"What is your name?":"hello","How old are you?":25}' output.txt