variable "ami" {
  description = "this is ami for ubuntu"
  type= string
  #ami-04b4f1a9cf54c11d0
}
variable "instance_type" {
  description = "instance type for this ubuntu"
  type = string
}

variable "region" {
  description = "region for your instances"
  type = string
  default = "us-east-1"
}

variable "key_name" {
  description = "private key"
  type = string
}
variable "private_key" {
  description = "Path to the private key"
  type        = string
}

variable "ssh_user" {
  description = "ubuntu user"
  type = string
}