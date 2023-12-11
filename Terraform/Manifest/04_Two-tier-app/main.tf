#creating EC2 instance
resource "aws_instance" "My-web-instance1" {
  ami                         = "ami-02f3f602d23f1659d" #Amazon linux 2 AMI
  key_name                    = "mykeypair"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public-subnet1.id
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.Custom-Public-SG-DB.id]
  user_data                   = <<-EOF
        #!/bin/bash
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "<html><body><h1>This is My Custom Project Tier 1 </h1></body></html>" > /var/www/html/index.html
        EOF
}

#creating EC2 instance
resource "aws_instance" "My-web-instance2" {
  ami                         = "ami-02f3f602d23f1659d" #Amazon linux 2 AMI 
  key_name                    = "mykeypair"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public-subnet2.id
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.Custom-Public-SG-DB.id]
  user_data                   = <<-EOF
        #!/bin/bash
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo "<html><body><h1>This is My Custom Project Tier 2 </h1></body></html>" > /var/www/html/index.html
        EOF
}