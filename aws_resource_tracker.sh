#!/bin/bash

# Author:Aditi
# Date:5th-march-2024
# This script will be track AWS resources.
# AWS S3
# AWS RDS
# AWS EC2
# AWS Lambda
# AWS IAM users

# list s3 buckets
echo " print list of s3 buckets: "
aws s3 ls

# list Ec2 instance

# In the AWS CLI, the --query option allows you to specify a JMESPath expression to filter and format the output of AWS CLI commands. JMESPath is a query language for JSON that allows you to extract specific data from JSON-formatted responses.
echo " print list of ec2 instance buckets : "
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,InstanceType,KeyName,LaunchTime,State.Name]'

# list lambda
echo " print list of lambda buckets  : "
aws lambda list-functions 

# list IAM users
echo " print list of IAM users buckets: " 
aws iam list-users
 

# list RDS
echo " print list of rds buckets : "
aws rds describe-db-instances --query 'DBInstances[*].[DBInstanceIdentifier, Engine, DBInstanceClass, DBInstanceStatus]'



