/* Sample base file
 to work with the AWS provider */

# Identifying the Provider
# credentials available in ~/.aws/credentials
# notice that values are quoted
provider "aws" {
  region = "us-west-1"
}

# Identifying the resources
resource "aws_instance" "myEC2" {
  # here myEC2 is just a name
  ami           = "ami-925144f2"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "{aws_instance.myEC2.id"
}
