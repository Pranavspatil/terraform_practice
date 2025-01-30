provider "aws" {
  region = "us-east-1"
}

module "ec2" {

source = "../modules/ec2"

ami = "ami-04b4f1a9cf54c11d0"
instance_type = "t2.micro"
key_name = "docker"

private_key = "C:/Users/shaik/Downloads/docker.pem"
ssh_user = "ubuntu"


}