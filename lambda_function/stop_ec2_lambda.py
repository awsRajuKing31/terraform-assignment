import boto3
import os
region = "us-east-1"

def lambda_handler(event, context):
    ec2 = boto3.client('ec2', region_name=region)

    # Get all EC2 instances
    instances = ec2.describe_instances()

    # Stop each instance
    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            ec2.stop_instances(InstanceIds=[instance['InstanceId']])

    return {
        'statusCode': 200,
        'body': 'EC2 instances stopped successfully!'
    }
