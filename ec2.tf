resource "aws_instance" "web" {
  ami           = "ami-0866a3c8686eaeeba" # Ubuntu AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Week1-EC2"
  }
}
