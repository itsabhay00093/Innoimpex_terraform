resource "aws_launch_template" "this" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip
    security_groups             = var.security_group_ids
  }

  tag_specifications {
    resource_type = "instance"
    tags          = var.tags
  }
}
