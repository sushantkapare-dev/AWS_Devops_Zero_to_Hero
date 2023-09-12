resource "aws_instance" "my_instance" {
     ami = var.ami
     instance_type = var.instance_type
     subnet_id = var.subnet 
     tags = {
         Name = var.instance_name
     }
  
}