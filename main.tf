terraform {
  cloud {
    organization = "mytestorg-ec2"
    workspaces {
      name = "mycloudtestworkspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "mysecondec2" {
  ami           = "ami-0231217be14a6f3ba"
  instance_type = "t2.micro"
  tags = {
        Name = "ExampleAppServerInstance"
  //    Name = var.instance_name
  }

}

