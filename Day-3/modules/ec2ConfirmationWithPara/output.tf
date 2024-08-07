output "capture_public_ip" {
  value = aws_instance.tf_example.public_ip
}
output "capture_private_ip" {
  value = aws_instance.tf_example.private_ip
}

output "capture_subnetID" {
    value = aws_instance.tf_example.subnet_id
  
}

output "vpcid" {
    value = aws_instance.tf_example.vpc_security_group_ids
  
}
