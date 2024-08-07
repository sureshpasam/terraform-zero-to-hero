output "public-ip-address" {
  value = aws_instance.example.public_ip

}

output "public-ip-address_1" {
  value = aws_instance.example1.public_ip

}
output "public-ip-address_2" {
  
  value = aws_instance.example2.public_ip
 
}

