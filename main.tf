variable "table_name" {
  type    = string
  default = "zaclim-bookinventory2"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_dynamodb_table" "bookinventory2" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ISBN"
  range_key    = "Genre"

  attribute {
    name = "ISBN"
    type = "S"
  }

  attribute {
    name = "Genre"
    type = "S"
  }

  
}