#creating a VPC
resource "aws_vpc" "custom-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Customvpc"
  }
}

#creating internet gateway
resource "aws_internet_gateway" "custom-internet-gateway" {
  vpc_id = aws_vpc.custom-vpc.id

  tags = {
    Name = "My-Internet-Gateway"
  }
}

#creating elastic IP address
resource "aws_eip" "custom-elastic-ip" {
  vpc = true
}

#Create a NAT gateway and associate it with an Elastic IP and a public subnet
resource "aws_nat_gateway" "custom-nat-gateway" {
  allocation_id = aws_eip.custom-elastic-ip.id
  subnet_id     = aws_subnet.public-subnet2.id
}

#creating NAT route
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.custom-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.custom-nat-gateway.id
  }

  tags = {
    Name = "My-Custom-Network-Address-Route"
  }
}

#creating public subnet
resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "My-public-subnet1"
  }
}

#creating public subnet
resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "My-public-subnet2"
  }
}

#creating private subnet
resource "aws_subnet" "private-subnet1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "My-private-subnet1"
  }
}

#creating private subnet
resource "aws_subnet" "private-subnet2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "My-private-subnet2"
  }
}

#creating subnet group
resource "aws_db_subnet_group" "My-Custom-subgroup" {
  name       = "my-custom-subgroup"
  subnet_ids = [aws_subnet.private-subnet1.id, aws_subnet.private-subnet2.id]
  tags = {
    Name = "My data base subnet group"
  }
}

#creating route table association
resource "aws_route_table_association" "private_route_table-ass-1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_route_table-ass-2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}

#creating a security group
resource "aws_security_group" "My-sg" {
  name        = "My-sg"
  description = "security group for load balancer"
  vpc_id      = aws_vpc.custom-vpc.id

  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#creating a load balancer
resource "aws_lb" "My-lb" {
  name               = "My-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id]
  security_groups    = [aws_security_group.My-sg.id]
}

#creating load balancer target group
resource "aws_lb_target_group" "My-lb-tg" {
  name     = "Customtargetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.custom-vpc.id

  depends_on = [aws_vpc.custom-vpc]
}

#creating load balancer target group
resource "aws_lb_target_group_attachment" "My-target-group1" {
  target_group_arn = aws_lb_target_group.My-lb-tg.arn
  target_id        = aws_instance.My-web-instance1.id
  port             = 80

  depends_on = [aws_instance.My-web-instance1]
}
#creating load balancer target group
resource "aws_lb_target_group_attachment" "My-target-group2" {
  target_group_arn = aws_lb_target_group.My-lb-tg.arn
  target_id        = aws_instance.My-web-instance2.id
  port             = 80

  depends_on = [aws_instance.My-web-instance2]
}
#creating load balancer listener
resource "aws_lb_listener" "My-listener" {
  load_balancer_arn = aws_lb.My-lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.My-lb-tg.arn
  }
}

#creating route table
resource "aws_route_table" "public_route_table" {
  tags = {
    Name = "public_route_table"
  }
  vpc_id = aws_vpc.custom-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.custom-internet-gateway.id
  }
}

#creating route table association
resource "aws_route_table_association" "public_route_table-ass-1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

#creating route table association
resource "aws_route_table_association" "public_route_table-ass-2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

#creating public security group
resource "aws_security_group" "Custom-Public-SG-DB" {
  name        = "Custom-Public-SG-DB"
  description = "web and SSH allowed"
  vpc_id      = aws_vpc.custom-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}