variable "aws_region" {
        description = " it will define the AWS region "
        default = "us-east-2"
}
variable "server_port" {
        description = " http service listen on ths port "
        default = "80"
}

variable "ssh_port" {
        description = "ssh request to server  "
        default = "22"
}
variable "instance_type" {
        description = "AWS ec2 instance type"
        default="t2.micro"
}
variable "my_public_ip" {
        description = "My local system public IP ..."
        default = "52.15.169.248/32"
}
variable "aws_ami" {
description = "amazon machine image"
default = "ami-0e01ce4ee18447327"
}

variable "azs" {
default = [ "us-east-2a", "us-east-2b", "us-east-2c"]
}
