module "aws_lambda" {
  source = "./modules/aws_lambda"
  lambda_function_name = var.lambda_function_name
  dynamodb_table_name = var.dynamodb_table_name
  dynamodb_hash_key = var.dynamodb_hash_key
  aws_region = var.aws_region
  lambda_exec_role_arn = module.aws_iam.lambda_exec_role_arn
}

module "aws_apigateway" {
  source = "./modules/aws_apigateway"
  lambda_function_name = var.lambda_function_name
  lambda_function_invoke_arn = module.aws_lambda.lambda_function_invoke_arn
  api_gateway_name = var.api_gateway_name
  api_gateway_stage_name = var.api_gateway_stage_name
}

module "aws_dynamodb" {
  source = "./modules/aws_dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
  dynamodb_hash_key = var.dynamodb_hash_key
}

module "aws_iam" {
  source = "./modules/aws_iam"
}

module "aws_cloudwatch" {
  source = "./modules/aws_cloudwatch"
  lambda_function_name = var.lambda_function_name
}


