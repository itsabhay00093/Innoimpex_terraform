variable "name" {}
variable "max_size" {}
variable "min_size" {}
variable "desired_capacity" {}
variable "subnet_ids" { type = list(string) }
variable "launch_template_id" {}
variable "target_group_arns" { type = list(string) }
variable "health_check_type" {}
variable "health_check_grace_period" { type = number }
variable "tags" { type = map(string) }
