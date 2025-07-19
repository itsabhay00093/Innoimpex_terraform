region                    = "us-east-1"
vpc_id                    = "vpc-12345678"
subnet_ids                = ["subnet-aaa", "subnet-bbb"]

tags = {
  Environment = "dev"
  Project     = "asg-module-demo"
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
lt_name_prefix        = "web-lt-"
ami_id                = "ami-0c02fb55956c7d316"
instance_type         = "t2.micro"
key_name              = "my-keypair"
associate_public_ip   = true

# ASG
asg_name                   = "web-asg"
asg_max_size               = 3
asg_min_size               = 1
asg_desired_capacity       = 2
target_group_arns          = []
health_check_type          = "EC2"
health_check_grace_period  = 300
