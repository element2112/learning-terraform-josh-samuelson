# data "aws_ami" "app_ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"] # uses wildcard to get the latest version
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["979382823631"] # Bitnami
# }

resource "aws_instance" "web" {
  ami           = "ami-03ea746da1a2e36e7"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
