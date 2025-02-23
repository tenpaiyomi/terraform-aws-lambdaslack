variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = "map"
}
variable "s3_bucket_name" {}
variable "s3_file_key" {}
variable "SLACK_CHANNEL" {}
variable "SLACK_HOOK_URL" {}
variable "event_rule_arn" {}
variable "event_rule_name" {}
variable "notification_topic_arn" {}
