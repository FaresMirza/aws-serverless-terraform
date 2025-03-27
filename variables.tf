

variable "aws_region" {
  type = string
}

variable "dynamodb_table_name" {
  type = string
}

variable "dynamodb_hash_key" {
  type = string
}

variable "lambda_function_name" {
  type = string
}

variable "api_gateway_name" {
  type = string
}

variable "api_gateway_stage_name" {
  type = string
}
