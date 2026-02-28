resource "aws_instance" "app_server" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = "terraform"
        Project = "Roboshop"
        Terraform = "True"
        Environment = "Dev"
        
    }
}

resource "aws_security_group" "allow_tls" {
    name = "terraform_sg_group"
    description = "terraform security group allow all"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
        Name = "terraform_sg"
    }
}

data "aws_route53_zone" "dns"{
    name = "sandh.co.in"
}
resource "aws_route53_record" "www" {
       zone_id = "Z086001213PRS8PI96NCE"
       name = "${aws_instance.app_server.tags["Name"]}.${data.aws_route53_zone.dns.name}"
       type = "A"
       ttl = 1
       records = [aws_instance.app_server.private_ip]
  
}