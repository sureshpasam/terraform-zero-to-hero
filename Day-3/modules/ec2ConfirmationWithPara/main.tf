resource "aws_instance" "tf_example" {
    ami = var.ami_value
    instance_type = var.instance_type
  
}
