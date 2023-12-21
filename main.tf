module "sshinstance" {
  source = "./modules/sshinstances"

  name_prefix = var.name_prefix
  environment = var.environment
  vpc_id = var.vpc_id
  public_subnet_id = var.public_subnet_id
  ssh_key_name = var.ssh_key_name
  ssh_instance_count = var.ssh_instance_count       #referencing and index
}

resource "aws_instance" "webapp" {
  count                   = var.enable_web_instance ? 1:0                     #referencing and index
  ami                     = data.aws_ami.amazon_linux.id
  instance_type           = "t3.micro"
  subnet_id               = var.public_subnet_id
  vpc_security_group_ids  = [aws_security_group.allow_webapp.id]

  tags = {
    Name                  = "${var.name_prefix}-webapp-${count.index}" #referencing and index
    Environment = var.environment
  }
}