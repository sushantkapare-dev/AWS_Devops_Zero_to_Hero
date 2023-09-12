resource "aws_instance" "name_web" {
  count = 2  
  ami = "ami-0f8e81a3da6e2510a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = aws_subnet.main.id

  tags = {
    Name = "HelloWorld"
  }
}
