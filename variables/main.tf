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
