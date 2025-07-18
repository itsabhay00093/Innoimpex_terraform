aws_region           = "us-east-1"
key_name             = "abhay"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "testvpc"

public_subnet_cidr   = "10.0.1.0/24"
public_subnet_name   = "testvpc-public-subnet"

igw_name             = "testvpc-igw"
route_table_name     = "testvpc-public-rt"

sg_name              = "demo-ec2-sg"
sg_description       = "Allow SSH inbound traffic"
sg_ingress_cidr      = ["0.0.0.0/0"]

instance_type        = "t2.micro"
ec2_name             = "demo"

