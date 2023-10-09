Q: How can Terraform help in provisioning infrastructure resources on AWS?

Terraform allows you to define infrastructure as code, and with the AWS provider, you can easily provision and manage AWS resources. For example, you can create an AWS EC2 instance using Terraform:
```
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstance"
  }
}
```
