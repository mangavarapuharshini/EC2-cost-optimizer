import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')  # Optional: region_name='us-east-1'
    instance_id = 'i-0e82a55ec382dad25'

    try:
        ec2.stop_instances(InstanceIds=[instance_id])
        print(f'Stopped instance {instance_id}')
    except Exception as e:
        print(f'Error: {e}')
