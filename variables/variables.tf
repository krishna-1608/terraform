variable "ami_id"{
    type = string 
    default = "ami-09c813fb71547fc4f" 

}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "ec2-tags" {
        default = {
            name = "terraform"
            terraform = "true"
            project = "joindevops"
    }
  
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