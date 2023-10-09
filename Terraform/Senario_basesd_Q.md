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

Q: How can Terraform handle infrastructure changes safely?

Terraform uses a state file to track the current state of your infrastructure. When you modify your Terraform configuration, it will compare the new state with the previous state and create a plan to apply the changes safely. For instance, you can update the instance type of the existing AWS EC2 instance:
```
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.small" # Updated instance type
  tags = {
    Name = "ExampleInstance"
  }
}
```

Q: How can Terraform manage different environments, such as development, staging, and production?

Terraform allows you to use variable files to customize configurations for different environments. For example, you can use a separate dev.tfvars file for the development environment:
```
# dev.tfvars
instance_count = 2
instance_type = "t2.micro"
```
```
# main.tf
provider "aws" {
  region = "us-east-1"
}

variable "instance_count" {}
variable "instance_type" {}

resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  tags = {
    Name = "ExampleInstance-${count.index}"
  }
}
```

