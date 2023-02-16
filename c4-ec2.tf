# Resource ec2
resource "aws_instance" "web-ec2" {
  ami           = data.aws_ami.latest_ami.id
  instance_type = var.instance_type
  key_name      = "new-key"
  user_data     = file("apache.sh")
  count         = 3
  tags = {
    Name = "web-ec2-${count.index}"
  }
  vpc_security_group_ids = [aws_security_group.my-SG-1.id]
}
