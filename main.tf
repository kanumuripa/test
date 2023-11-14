resource "aws_instance" "kubectl" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "EC2-ssh"
  vpc_security_group_ids      = var.sg_id
  subnet_id                   = var.subnet_id

  tags = {
    Name = "gitlab-pipeline"
    ENV  = "gitlab"
  }
}