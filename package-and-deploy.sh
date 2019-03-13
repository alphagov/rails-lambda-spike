#!/usr/bin/env bash

set -e

sam package --template-file template.yml --output-template-file packaged-template.yaml --s3-bucket rails-lambda
sam deploy --template-file packaged-template.yaml --stack-name LambdaRails --capabilities CAPABILITY_IAM
