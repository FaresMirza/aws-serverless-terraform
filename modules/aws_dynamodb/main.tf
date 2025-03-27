resource "aws_dynamodb_table" "dynamodb_table" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.dynamodb_hash_key
  attribute {
    name = var.dynamodb_hash_key
    type = "S" # Assuming the hash key is a string
  }
}