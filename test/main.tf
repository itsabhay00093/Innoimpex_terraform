provider "aws" {
  region  = var.region
  profile = "innoimpex"
}

module "sg" {
  source        = "./modules/security_group"
  name          = var.sg_name
  description   = var.sg_description
  vpc_id        = var.vpc_id
  ingress_rules = var.sg_ingress_rules
  egress_rules  = var.sg_egress_rules
  tags          = var.tags
}

output "sg_id" {
  value = module.sg.security_group_id
}
module "lt" {
  source              = "./modules/launch_template"
  name_prefix         = var.lt_name_prefix
  image_id            = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  associate_public_ip = var.associate_public_ip
  security_group_ids  = [module.sg.security_group_id]
  tags                = var.tags
}

module "asg" {
  source                    = "./modules/asg"
  name                      = var.asg_name
  max_size                  = var.asg_max_size
  min_size                  = var.asg_min_size
  desired_capacity          = var.asg_desired_capacity
  subnet_ids                = var.subnet_ids
  launch_template_id        = module.lt.launch_template_id
  target_group_arns         = var.target_group_arns
  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period
  tags                      = var.tags
}
output "asg_nm" {
  value = module.asg.asg_name
}
