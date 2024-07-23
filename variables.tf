variable "env" {
  type     = string
  nullable = false
}

variable "region" {
  type     = string
  nullable = false
}

variable "aws_account_number" {
  type     = string
  nullable = false
}

variable "created_by" {
  type     = string
  nullable = false
}

variable "application" {
  type     = string
  nullable = false
}

variable "omni_coupa_notification_emails" {
  type     = list(string)
  nullable = false
}

variable "omni_coupa_websli_token" {
  type     = string
  nullable = false
}

variable "omni_coupa_api_url" {
  type     = string
  nullable = false
}

variable "omni_coupa_cw_bill_number" {
  type     = string
  nullable = false
}

variable "omni_coupa_wt_bill_number" {
  type     = string
  nullable = false
}