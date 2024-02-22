resource "aws_sns_topic" "notification_topic" {
  name = "notification_topic"
}
resource "aws_sns_topic_subscription" "lambda_subscription" {
  topic_arn = aws_sns_topic.notification_topic.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.stop_ec2_lambda.arn
}
