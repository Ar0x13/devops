# Security group
resource "aws_security_group" "test_web_sg" {
    vpc_id       = "${aws_vpc.test_vpc.id}"
    name         = "test_security_group"
    description  = "Allow incoming HTTP connections & SSH access"

    # ingress {
    #     cidr_blocks = "${var.sg_cidr}"  
    #     from_port   = 22
    #     to_port     = 22
    #     protocol    = "tcp"
    # }

    # ingress {
    #     from_port = -1
    #     to_port = -1
    #     protocol = "icmp"
    #     cidr_blocks = "${var.sg_cidr}" 
    # }
    
    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]

    }

tags = {
        Name = "Web Server SG"
  }
}