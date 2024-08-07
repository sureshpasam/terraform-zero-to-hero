resource "aws_instance" "example" {
    ami           = var.ami_value_east1  # Specify an appropriate AMI ID
    instance_type = var.instance_type
    provider = aws.us-east-1

}

resource "aws_instance" "example1" {
    ami           = var.ami_value_east2 # Specify an appropriate AMI ID
    instance_type = var.instance_type
    provider = aws.us-east-2

}
resource "aws_instance" "example2" {
    ami           = var.ami_value_west1  # Specify an appropriate AMI ID
    instance_type = var.instance_type
    provider = aws.us-west-1

}


