output "ssh_public_ip" {
  value = module.sshinstance.ssh_public_ip      #referencing and index
}

output "ssh_webapp_ip" {
  value = aws_instance.webapp[*].public_ip     #referencing and index
}