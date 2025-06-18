module "ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0abcdef1234567890"  # Update to valid AMI ID
  instance_type  = "t2.micro"
  iam_role_name  = aws_iam_role.ec2_role.name
  subnet_id      = var.subnet_id
}
