resource "aws_internet_gateway" "exampleGW" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "exampleGW"
  }
}
