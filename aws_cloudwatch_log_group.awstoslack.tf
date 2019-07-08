resource "aws_cloudwatch_log_group" "awstoslack" {
  name                = "/aws/lambda/${aws_lambda_function.awstoslack.name}"
  retention_in_days   = 7

  depends_on = [
    "aws_lambda_function.awstoslack"
  ]
}