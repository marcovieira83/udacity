# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "udacity"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  ami = "ami-0c0ec4f9dfef65946"
  instance_type = "t2.micro"
  count = 4

  tags = {
    Name = "Udacity T2"
  }
}



# # TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "UdacityM4" {
#   ami = "ami-0c0ec4f9dfef65946"
#   instance_type = "m4.large"
#   count = 2

#   tags = {
#     Name = "Udacity M4"
#   }
# }
