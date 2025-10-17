data "aws_ami" "devops" {
    owners = [ "973714476881" ]
    most_recent = true

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
  
}

output "ami-id" {
    value = data.aws_ami.devops.id
     
}

# output "instance-id" {
#     value = aws_instance.terraform
  
# }

data "aws_instance" "mongodb" {
    instance_id = aws_instance.terraform.id
}

output "mongodb-info" {
    
    value = {
        private-ip = data.aws_instance.mongodb.private_ip
        public-ip = data.aws_instance.mongodb.public_ip
    }
        
   
}