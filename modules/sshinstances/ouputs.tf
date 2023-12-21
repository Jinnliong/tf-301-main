output "ssh_public_ip" {
  value = aws_instance.ssh[*].public_ip       #referencing and index
}

output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "ami_arn" {
  value = data.aws_ami.amazon_linux.arn
}

## Additional Example: Output Block
# output "subnets" {
#   value = data.aws_subnets.public.ids
# }
