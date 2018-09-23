
# Network ACL
resource "aws_network_acl" "test_network_ACL" {
  vpc_id = "${aws_vpc.test_vpc.id}"
  subnet_ids = [ "${aws_subnet.test_pub_subnet.id}" ]

# allow port 22
  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "${var.nacl_cidr}" 
    from_port  = 0
    to_port    = 0
  }

# allow egress ephemeral ports
  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "${var.nacl_cidr}"
    from_port  = 0
    to_port    = 0
  }
tags {
    Name = "My test test VPC ACL"
  }
} 
