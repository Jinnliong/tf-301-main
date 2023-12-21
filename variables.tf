variable "name_prefix" {
  type = string
  default = "jinnliong" # to change
}

variable "environment" {
  type = string
  default = "development"
}

variable "vpc_id" {
  type = string
  default = "vpc-0582d885a3bc6c51b"
}

variable "public_subnet_id" {
  type = string
  default = "subnet-0e89cf792598a2ba4"
}

variable "ssh_key_name" {
  type = string
  default = "jl"                      #use my own ssh key
}

variable "ssh_instance_count" {
  type = number
  default = "2"                       #referencing and index
}

variable "enable_web_instance" {
  type = bool
  default = true
}