#!/bin/bash
# AWS credentials file must contain valid credentials or AWS SSO config must have been run

sam build
sam deploy --stack-name origin-[SOLUTION_RUN_ID] --resolve-s3 --debug --no-fail-on-empty-changeset --on-failure DELETE
