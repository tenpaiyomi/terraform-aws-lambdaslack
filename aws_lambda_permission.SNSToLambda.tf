resource "aws_lambda_permission" "SNSToLambda" {
  statement_id  = "SNSToLambda"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.awstoslack.function_name}"
  principal     = "sns.amazonaws.com"
  source_arn    = "${var.notification_topic_arn}"
}
