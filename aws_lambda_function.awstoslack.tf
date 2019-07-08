resource "aws_lambda_function" "awstoslack" {
  function_name    = "aws-to-slack-Handler-1EGUEB33ADSVH"
  handler          = "src/index.handler"
  memory_size      = "256"
  role             = "${aws_iam_role.awstoslack.arn}"
  runtime          = "nodejs8.10"
  timeout          = "10"
  filename         = "${path.module}/lambda.zip"
  s3_bucket        = "${var.s3_bucket_name}"
  s3_key           = "${var.s3_file_key}"

  environment {
    variables = {
      SLACK_CHANNEL  = "${var.SLACK_CHANNEL}"
      SLACK_HOOK_URL = "${var.SLACK_HOOK_URL}"
    }
  }

  tags = "${var.common_tags}"

  depends_on = [
    "aws_s3_bucket_object.lambda-zip",
  ]
}
