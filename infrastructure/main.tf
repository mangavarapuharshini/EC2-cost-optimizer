provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "lambda_ec2_stop_role" {
  name = "lambda-ec2-stop-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "attach_ec2_policy" {
  role       = aws_iam_role.lambda_ec2_stop_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
