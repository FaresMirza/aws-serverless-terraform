#!/bin/bash


echo "Enter the region you want to deploy to: "
read region

echo "Enter Access key ID:"
read access_key

echo "Enter Secret access key:"
read secret_access_key

echo "Enter the DynamoDB table name:"
read dynamodb_table_name

echo "Enter the DynamoDB hash key:"
read dynamodb_hash_key

echo "Enter the Lambda function name:"
read lambda_function_name

echo "Enter the API Gateway name:"
read api_gateway_name

echo "Enter the API Gateway stage name:"
read api_gateway_stage_name

export AWS_ACCESS_KEY_ID=$access_key
export AWS_SECRET_ACCESS_KEY=$secret_access_key
export TF_VAR_aws_region=$region
export TF_VAR_dynamodb_table_name=$dynamodb_table_name
export TF_VAR_dynamodb_hash_key=$dynamodb_hash_key
export TF_VAR_lambda_function_name=$lambda_function_name    
export TF_VAR_api_gateway_name=$api_gateway_name
export TF_VAR_api_gateway_stage_name=$api_gateway_stage_name

cat <<EOF > terraform.tfvars
aws_region = "$region"
dynamodb_table_name = "$dynamodb_table_name"
dynamodb_hash_key = "$dynamodb_hash_key"
lambda_function_name = "$lambda_function_name"
api_gateway_name = "$api_gateway_name"
api_gateway_stage_name = "$api_gateway_stage_name"
EOF


terraform init
terraform plan
terraform apply -auto-approve






