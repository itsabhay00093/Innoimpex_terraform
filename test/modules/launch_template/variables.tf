variable "name_prefix" {}
variable "image_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "associate_public_ip" { type = bool }
variable "security_group_ids" { type = list(string) }
variable "tags" { type = map(string) }
