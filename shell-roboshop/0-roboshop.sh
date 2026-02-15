#!/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
SG_ID="sg-0f57b313ae45eaff0"
#ZONE_ID="Z05005173GDIZPB1JV6KA"
#DOMAIN_NAME="farm2home.shop"

for instance in $@
do
    INSTANCE_ID=$( aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type "t3.micro" \
    --security-group-ids $SG_ID \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" \
    --query 'Instances[0].InstanceId' \
    --output text)

    echo "IP Address: $IP"

done