# EC2-cost-optimizer
Auto-stop underutilized EC2 instances using AWS Lambda and CloudWatch Alarms
# EC2-cost-optimizer

Automatically stop underutilized EC2 instances based on low CPU utilization using AWS Lambda and CloudWatch alarms.

## Setup

1. Create IAM Role with necessary permissions.
2. Deploy the Lambda function `stop_ec2_on_low_cpu.py`.
3. Create CloudWatch alarm to trigger Lambda when CPU < 5%.
4. Subscribe to SNS topic for notifications.

## Usage

- The Lambda function stops the specified EC2 instance.
- Monitor alarms and notifications via CloudWatch and SNS.

## License

Specify license here if applicable.
