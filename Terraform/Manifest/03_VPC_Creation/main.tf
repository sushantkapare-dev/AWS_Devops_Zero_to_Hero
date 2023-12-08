
provider "aws" {
    region = "us-east-1" #change your region as per your infra
  
}

resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
  
   tags = {
     
     Name = "MyVPC"
   }
}

resource "aws_security_group" "my_sg" {
    name = "my_sg"
    description = "Alloe inbound ssh and HTTP traffic"

    vpc_id = aws_vpc.my_vpc.id


    ingress = {
        from_port = 22
        to_port = 22
        protocal = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }

     ingress = {
        from_port = 80
        to_port = 80
        protocal = "tcp"
        cidr_block = ["0.0.0.0/0"]
    }

    egress = {
        from_port = 0
        to_port = 0
        protocal = "-1"
        cidr_block = ["0.0.0.0/0"]
    }

    tags = {
      Name = "MySecurityGroup"
    }
  
}



##commands

# terraform init
# terraform plan
# terraform apply --auto-approve
# terraform destroy --auto-approve