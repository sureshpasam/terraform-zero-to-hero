resource "aws_instance" "example" {
    ami           = var.ami_value  # Specify an appropriate AMI ID
    instance_type = var.instance_type

}
