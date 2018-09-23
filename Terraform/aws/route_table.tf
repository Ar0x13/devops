
# Route table
resource "aws_route_table" "test_pub_subnet" {
  vpc_id = "${aws_vpc.test_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.test_igw.id}"
  }

  tags {
    Name = "test_Public_Subnet"
  }
}

# Create the Internet Access
resource "aws_route" "My_VPC_internet_access" {
  route_table_id        = "${aws_route_table.test_pub_subnet.id}"
  destination_cidr_block = "${var.nacl_cidr}"
  gateway_id             = "${aws_internet_gateway.test_igw.id}"
} # end resource

# Assign the route table to the public Subnet
resource "aws_route_table_association" "test_pub_subnet" {
  subnet_id = "${aws_subnet.test_pub_subnet.id}"
  route_table_id = "${aws_route_table.test_pub_subnet.id}"
}