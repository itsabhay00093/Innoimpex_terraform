region     = "ap-south-1"
vpc_id     = "vpc-0ae75acd847e1d688"
subnet_ids = ["subnet-0afb8446ca7943880", "subnet-07877e9f6cf1379a9"]

tags = {
  Environment = "dev"
  Project     = "module-demo"
}

# Security Group
sg_name        = "web-sg"
sg_description = "Allow HTTP and SSH"

sg_ingress_rules = [
  { from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
  { from_port = 80, to_port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
]

sg_egress_rules = [
  { from_port = 0, to_port = 0, protocol = "-1", cidr_blocks = ["0.0.0.0/0"] },
]

# Launch Template
lt_name_prefix      = "we-lt-"
ami_id              = "ami-0a1235697f4afa8a4"
instance_type       = "t3.small"
key_name            = "abhay"
associate_public_ip = true

# ASG
asg_name                  = "web-test"
asg_max_size              = 3
asg_min_size              = 1
asg_desired_capacity      = 1
target_group_arns         = []
health_check_type         = "EC2"
health_check_grace_period = 300
