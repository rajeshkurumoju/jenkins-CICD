resource "aws_s3_bucket" "raj" {
    bucket = "rajesh-kumar-luv"
  
}


#create dynamo table
resource "aws_dynamodb_table" "dynamo-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

}