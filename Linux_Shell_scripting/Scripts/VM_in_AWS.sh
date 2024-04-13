#!/bin/bash

# AWS region to create instances
AWS_REGION="us-west-2"

# AWS EC2 instance type
INSTANCE_TYPE="t2.micro"

# AMI ID for the base image (Amazon Linux 2)
AMI_ID="ami-0a91cd140a1fc148a"

# Security group ID allowing SSH access (replace with your own)
SECURITY_GROUP_ID="sg-0123456789abcdef0"

# Key pair name for SSH access (replace with your own)
KEY_NAME="your-key-pair-name"

# Loop to create 10 EC2 instances
for i in {1..10}; do
    INSTANCE_NAME="vm-$i"
    echo "Creating instance: $INSTANCE_NAME"
    aws ec2 run-instances \
        --region $AWS_REGION \
        --image-id $AMI_ID \
        --instance-type $INSTANCE_TYPE \
        --security-group-ids $SECURITY_GROUP_ID \
        --key-name $KEY_NAME \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]"
done

echo "Instances creation complete."
