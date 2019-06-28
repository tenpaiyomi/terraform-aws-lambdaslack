resource "aws_lambda_permission" "EventsToLambda" {
  statement_id  = "EventsToLambda${count.index}"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.awstoslack.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${vars.event_rule_arn}"
}
