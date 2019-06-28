resource "aws_cloudwatch_event_target" "snstoslack" {
  rule  = "${var.event_rule_arn}"
  arn   = "${aws_lambda_function.awstoslack.arn}"
}
