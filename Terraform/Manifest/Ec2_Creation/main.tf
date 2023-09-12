
terraform {
  backend "s3" {
    bucket = "mynewbusket1306"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"

  }
}

provider "aws" {
  region = "ap-northeast-2"

}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c9c942bd7bf113a2"
  instance_type = "t2.micro"
  tags = {
    "Name" = "MyEc2Instance"
  }
}
