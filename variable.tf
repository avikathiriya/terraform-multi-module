variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "project_name" {
  type    = string
  default = "avis-multi-module-project"
}
variable "environment" {
  type    = string
  default = "dev"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-0b6d9d3d33ba97d99"
}