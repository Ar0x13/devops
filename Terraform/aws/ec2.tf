# How to find EC2 instance -> 
# aws  ec2 describe-images --owners aws-marketplace --query 'Images[*].[VirtualizationType,Name,ImageId]' \
# --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce --output table

# EC2 Instance
# Centos 7 
resource "aws_instance" "test_ec2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"

  subnet_id = "${aws_subnet.test_pub_subnet.id}"
  associate_public_ip_address = true
  security_groups = ["${aws_security_group.test_web_sg.id}"]
  key_name = "${aws_key_pair.my-key.key_name}"

  tags {
    Name = "test web server"
  }
}

# Assign Elastic IP
resource "aws_eip" "test_ec2" {
    instance = "${aws_instance.test_ec2.id}"
    vpc = true
}
