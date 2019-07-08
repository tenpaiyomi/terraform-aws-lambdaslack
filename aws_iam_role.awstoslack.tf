resource "aws_iam_role" "awstoslack" {
  name               = "AWSToSlackHandlerRole"
  assume_role_policy = "${data.aws_iam_policy_document.assumerole.json}"
}
