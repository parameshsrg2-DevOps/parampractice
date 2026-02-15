#!/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
SG_ID="sg-0f57b313ae45eaff0"
INSTANCE_TYPE="t3.micro"
#ZONE_ID="Z05005173GDIZPB1JV6KA"
#DOMAIN_NAME="farm2home.shop"

for instance in $@
do
   echo "Launching EC2 instance..."
    INSTANCE_ID=$( aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --security-group-ids $SG_ID \
    --query 'Instances[0].InstanceId' \
    --output text )

  echo "Instance ID: $INSTANCE_ID"

done