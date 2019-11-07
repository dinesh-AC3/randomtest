
resource "aws_network_interface" "foo" {
  subnet_id   = var.subnet_id

  tags = {
    Name = var.tag_name
  }
}

resource "aws_instance" "foo" {
  ami           = var.ami
  instance_type = var.instance_type
  
  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}