resource "aws_ssm_parameter" "omni-coupa-logs-table" {
  name  = "/${var.application}/${var.env}/omni-coupa-logs-table-name"
  type  = "String"
  value = aws_dynamodb_table.omni-coupa-logs-table.name

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_ssm_parameter" "omni-coupa-notification-sns-arn" {
  name  = "/${var.application}/${var.env}/error-notification-sns-arn"
  type  = "String"
  value = aws_sns_topic.omni-coupa-error-notification.arn

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_ssm_parameter" "omni -coupa-websli-token" {
  name  = "/${var.application}/${var.env}/websli-token"
  type  = "String"
  value = var.omni_coupa_websli_token

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_ssm_parameter" "omni -coupa-api-url" {
  name  = "/${var.application}/${var.env}/api-url"
  type  = "String"
  value = var.omni_coupa_api_url

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_ssm_parameter" "omni-coupa-cw-bill-number" {
  name  = "/${var.application}/${var.env}/cw-bill-number"
  type  = "String"
  value = var.omni_coupa_cw_bill_number

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}

resource "aws_ssm_parameter" "omni-coupa-wt-bill-number" {
  name  = "/${var.application}/${var.env}/wt-bill-number"
  type  = "String"
  value = var.omni_coupa_wt_bill_number

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}