resource "aws_dynamodb_table" "omni-coupa-logs-table" {
  name             = "omni-coupa-logs-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "Id"
  stream_enabled   = false
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "Id"
    type = "S"
  }
  attribute {
    name = "InvoiceNbr"
    type = "S"
  }

  global_secondary_index {
    name            = "InvoiceNbr-Index"
    hash_key        = "InvoiceNbr"
    projection_type = "ALL"
  }

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
  }
}