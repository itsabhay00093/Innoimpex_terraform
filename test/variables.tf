variable "region" {}
variable "tags" { type = map(string) }

variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }

variable "sg_name" {}
variable "sg_description" {}
variable "sg_ingress_rules" { type = any }
variable "sg_egress_rules" { type = any }

variable "lt_name_prefix" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "associate_public_ip" { type = bool }

variable "asg_name" {}
variable "asg_max_size" {}
variable "asg_min_size" {}
variable "asg_desired_capacity" {}
variable "target_group_arns" { type = list(string) }
variable "health_check_type" {}
variable "health_check_grace_period" {}
