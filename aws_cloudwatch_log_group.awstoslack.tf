resource "aws_cloudwatch_log_group" "awstoslack" {
  name                = "/aws/lambda/AWSToSlackHandler"
  retention_in_days   = 7

  depends_on = [
    "aws_lambda_function.awstoslack"
  ]
}