resource "aws_elb" "my_first_elb" {
    name = "terraform-elb"
    availability_zones = var.azs
    security_groups=[ "${aws_security_group.elb_sg.id}" ]
    listener {
        lb_port=80
        lb_protocol ="http"
        instance_port = var.server_port
        instance_protocol= "http"
    }
    health_check {
        healthy_threshold = 2
        unhealthy_threshold = 2
        timeout=3
        interval = 30
        target = "HTTP:${var.server_port}/"
    }
}
[root@ip-172-31-20-173 SecondProject_master]# cat elb_security_group.tf
resource "aws_security_group" "elb_sg" {

    ingress {
        from_port = var.server_port
        to_port = var.server_port
        protocol = "tcp"
        cidr_blocks = [ "${var.my_public_ip}" ]
    }

egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
