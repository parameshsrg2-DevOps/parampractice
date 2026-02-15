#!/bin/bash

SG_ID="sg-0f57b313ae45eaff0" # replace with your ID
AMI_ID="ami-0220d79f3f480ecf5"
ZONE_ID="Z05005173GDIZPB1JV6KA"
DOMAIN_NAME="farm2home.shop"

INSTANCE_ID=$( aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type "t3.micro" \
    --security-group-ids $SG_ID \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" \
    --query 'Instances[0].InstanceId' \
    --output text )

echo "Waiting for instance $INSTANCE_ID to be running..."
aws ec2 wait instance-running --instance-ids $INSTANCE_ID

if [ $instance == "frontend" ]; then
    # ... rest of your code