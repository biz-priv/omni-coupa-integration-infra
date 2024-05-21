resource "aws_sns_topic" "omni-coupa-error-notification" {
  name = "omni-coupa-error-notification-${var.env}"

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_sns_topic_subscription" "omni_coupa_emails_subscription" {
  for_each  = { for idx, email in var.omni_coupa_notification_emails : idx => email }
  topic_arn = aws_sns_topic.omni-coupa-error-notification.arn
  protocol  = "email"
  endpoint  = each.value
}