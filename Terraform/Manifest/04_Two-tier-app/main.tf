provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

module "web_server" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "web-server"
  instance_count = 1

  ami = "ami-xxxxxxxxxxxxxxxx"  # Specify the appropriate AMI ID
  instance_type = "t2.micro"

  key_name = "your-key-pair-name"  # Change this to your key pair name

  vpc_security_group_ids = [aws_security_group.web_sg.id]
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow inbound HTTP traffic"

  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

module "db_server" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 3.0"

  identifier = "mydb"
  engine     = "mysql"

  instance = {
    instance_class = "db.t2.micro"
    allocated_storage = 20
  }

  vpc_security_group_ids = [aws_security_group.db_sg.id]
}

resource "aws_security_group" "db_sg" {
  name        = "db-sg"
  description = "Allow inbound MySQL traffic"

  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [module.web_server.security_group_id]
  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "MyVPC"
  }
}
