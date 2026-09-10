AWS EC2 to S3 File Management Using AWS CLI

## Project Overview

This project demonstrates how to manage an Amazon S3 bucket from an Amazon EC2 instance using AWS CLI.

The project covers EC2 setup, SSH connection using PuTTY, AWS CLI configuration, S3 bucket creation, file upload, file verification, and file download.

## Architecture

Windows PC
   |
   | SSH / PuTTY
   ↓
Amazon EC2
   |
   | AWS CLI
   ↓
Amazon S3
   |
   ↓
S3 Bucket
   |
   ↓
test.txt

## AWS Services & Tools Used

- Amazon EC2
- Amazon S3
- AWS CLI
- IAM
- Amazon Linux 2023
- PuTTY / SSH

## Project Steps

1. Launch EC2 Instance
Created an Amazon EC2 instance using Amazon Linux 2023.
Instance Name:
`S3-CLI-Test-Instance`
Instance Type:
`t3.micro`

2. Connect to EC2 Using PuTTY
Connected to the EC2 instance using SSH through PuTTY.
Verified the operating system using:
```bash
cat /etc/os-release
```

3.Verify AWS CLI
Checked the AWS CLI installation
```bash
aws --version
```

4.Configure AWS CLI
Configured AWS CLI credentials and the default AWS region
```bash
aws configure
```

5.Verify AWS Authentication
Verified AWS authentication using
```bash
aws sts get-caller-identity
```

6.Create s3 bucket
Created an S3 bucket using AWS ClI
```bash
aws s3 mb s3://nitish8827
```

7.Verify S3 Bucket
Listed the available S3 Buckets
```bash
aws s3 ls
```

8.Created Test File 
Created a test file on the EC2 instance
```bash
echo "AWS EC2 to S3 CLI Project" >test.txt
```

9.Uplaod File to S3
Uploaded the test file to the S3 bucket
```bash
aws s3 cp test.txt s3://nitish887
```

10.Verify Uploaded File 
Verified the file inside the S3 Bucket
```bash
aws s3 ls s3://nitish8827
```

11.Download File from S3
Downloaded the file back to the EC2 Instance
```bash
aws s3 cp s3://nitish8827/test.txt downloaded .text
```

12.Verify downloaded File 
Verified the downloaded file  
```bash
cat downloaded.txt
```

## Result
Successfully created and managed and Amazon S3 bucket from an Amazon EC2 instance using AWS CLI

The project successfully demonstrated 
* EC2 to S3 connectivity
* S3 bucket creation
* File uploaded
* Object verification
* File Download
* Data verification

## Key AWS CLI Commands 

```Bash
aws --verion
aws configure
aws sts get-caller-identity
aws s3 mb
aws s3 ls
aws s3 cp
aws s3 rm
aws s3 rb
