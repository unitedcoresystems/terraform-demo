resource "aws_instance" "sonarqube" {
  count = length(var.ec2_names)
  ami           = data.aws_ami.amazon-2.id
  instance_type = "t2.medium"
  associate_public_ip_address = true
  key_name = var.mykey
  vpc_security_group_ids = [var.sg]
  subnet_id = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  user_data = filebase64("./userdata/sonarqube-script.sh")
  
  tags = {
    Name = var.ec2_names[count.index]
  }
}