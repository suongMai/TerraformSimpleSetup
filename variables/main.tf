variable "vpcname" {
  type        = string
  default     = "myvpc"
  description = "my first vpc"
}

provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "${var.vpcname}"
    }
}

variable "inputname" {
    type = string
    description = "Put the name of the vpc"
}

resource "aws-vpc" "myvpc" {
    tags = {
       Name = var.inputname     
    }
}

