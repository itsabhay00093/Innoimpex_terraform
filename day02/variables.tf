variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "vpc_name" {
  type        = string
  description = "Name tag for VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for public subnet"
}

variable "public_subnet_name" {
  type        = string
  description = "Name tag for public subnet"
}

variable "igw_name" {
  type        = string
  description = "Name tag for Internet Gateway"
}

variable "route_table_name" {
  type        = string
  description = "Name tag for route table"
}

variable "sg_name" {
  type        = string
  description = "Security group name"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "sg_ingress_cidr" {
  type        = list(string)
  description = "List of CIDRs allowed for SSH"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ec2_name" {
  type        = string
  description = "Name tag for EC2 instance"
}

