# moved {
#   from = aws_instance.web
#   to   = aws_instance.apache
# }

# resource "aws_instance" "web" {
#   ami           = "ami-0fcc78c828f981df2"
#   instance_type = "t3.micro"

#   vpc_security_group_ids = [aws_security_group.allows_private.id]
#   subnet_id              = aws_subnet.app.*.id[0]

#   tags = {
#     Name = "HelloWorld"
#   }
# }

# resource "aws_security_group" "allows_private" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "SSH"
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "allow_tls"
#   }
# }