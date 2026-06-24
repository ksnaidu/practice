resource "aws_instance" "roboshop" {
    ami             = var.ami_id
    #count = 4
    #instance_type   = var.environment == "dev" ? "t3.micro" : "t3.small"
    for_each = var.instances
    instance_type = each.value
    vpc_security_group_ids = [ aws_security_group.allow-all.id]
    #  tags = var.ec2.tags
      tags = {
        #Name = var.instances [count.index]
        Name = each.key
      }
  
}

resource "aws_security_group" "allow-all" {
    name        = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.from_port
        to_port   = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }
    

    egress {
        from_port = var.from_port
        to_port   = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }

         tags = var.sg_tags
         
}

