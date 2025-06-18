resource "aws_instance" "this" {
  ami                         = var.ami
  instance_type               = var.instance_type
  iam_instance_profile        = aws_iam_instance_profile.this.name
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  tags = {
    Name = "TerraformEC2"
  }
}

resource "aws_iam_instance_profile" "this" {
  name = "ec2_instance_profile"
  role = var.iam_role_name
}
