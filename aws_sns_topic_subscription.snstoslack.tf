resource "aws_sns_topic_subscription" "snstoslack" {
  topic_arn = "${var.notification_topic_arn}"
  protocol  = "LAMBDA"
  endpoint  = "${aws_lambda_function.awstoslack.arn}"
}
