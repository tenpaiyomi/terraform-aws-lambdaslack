resource "aws_s3_bucket_object" "lambda-zip" {
  acl     = "public-read"
  bucket  = "${var.s3_bucket_name}"
  key     = "${var.s3_file_key}"
  source  = "${path.module}/lambda.zip"

  depends_on = [
    "data.archive_file.lambda",
  ]
}