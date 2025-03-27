resource "aws_lambda_function" "lambda_function" {
  filename      = "lambda.zip"
  function_name = var.lambda_function_name
  role          = var.lambda_exec_role_arn
  handler       = "lambda.handler"
  runtime       = "nodejs20.x"
  environment {
    variables = {
      DYNAMODB_TABLE_NAME = var.dynamodb_table_name
      DYNAMODB_HASH_KEY = var.dynamodb_hash_key
      REGION = var.aws_region
    }
  }
}

# Create ZIP file for Lambda
data "archive_file" "lambda" {
  type        = "zip"
  source_dir  = "lambda"
  output_path = "lambda.zip"
}