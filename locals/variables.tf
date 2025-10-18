variable "project" {
    default = "roboshop"
}

variable "environment"{
    default = "test"
}

# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# }



variable "ami_id"{
    type = string 
    default = "ami-09c813fb71547fc4f" 

}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "common-tags" {
        default = {
            terraform = "true"
            project = "joindevops"
            environment = "test"
    }
  
}

output "roboshop" {
    value = aws_instance.terraform.key_name
  
}
variable "sg-name" {
    type = string 
    default = "Allow-all"
    description = "SG name to attach EC2 instance"
}

variable "cidr" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "ingress_from_port" {
    default = 0
      
}

variable "ingress_to_port" {
    default = 0
      
}

variable "egress_from_port" {
    default = 0
      
}

variable "egress_to_port" {
    default = 0
      
}

variable "protocol" {
    default = "-1"
  
}