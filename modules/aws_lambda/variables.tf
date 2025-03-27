variable "lambda_function_name" {
  type = string
}

variable "dynamodb_table_name" {
  type = string
} 

variable "dynamodb_hash_key" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "lambda_exec_role_arn" {
  type = string
}