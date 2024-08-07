resource "aws_instance" "sureshinstance" {
    ami = var.ami_value
    instance_type = var.instance_type
  
}

resource "aws_s3_bucket" "sureshs3b" {
    bucket = "suresh-s3-pa-jul30-terraformstatefilestore"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
      
    }
  
}
