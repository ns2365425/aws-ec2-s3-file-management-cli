#!/bin/bash

# Check AWS CLI
aws --version

# Verify AWS identity
aws sts get-caller-identity

# Create S3 bucket
aws s3 mb s3://nitish8827

# List S3 buckets
aws s3 ls

# Create test file
echo "AWS EC2 to S3 CLI Project" > test.txt

# Upload file to S3
aws s3 cp test.txt s3://nitish8827/

# Verify uploaded file
aws s3 ls s3://nitish8827/

# Download file from S3
aws s3 cp s3://nitish8827/test.txt downloaded.txt

# Verify downloaded file
cat downloaded.txt