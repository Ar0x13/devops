# Subnet
resource "aws_subnet" "test_pub_subnet" {
  vpc_id     = "${aws_vpc.test_vpc.id}"
  cidr_block = "${var.public_subnet_cidr}"

  tags {
    Name = "test Public Subnet"
  }
}