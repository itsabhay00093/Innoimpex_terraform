resource "aws_autoscaling_group" "this" {
  name                      = var.name
  max_size                  = var.max_size
  min_size                  = var.min_size
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier       = var.subnet_ids
  launch_template {
    id      = var.launch_template_id
    version = "$Latest"
  }
  target_group_arns         = var.target_group_arns
  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period
  dynamic "tag" {
  for_each = var.tags
  content {
    key                 = tag.key
    value               = tag.value
    propagate_at_launch = true
  }
}
} 
