variable "instances" {
    default = [ "mongodb", "redis", "mysql" ]
    # default = {
    #     mongodb = "t3.micro"
    #     redis = "t3.small"
    #     mysql = "t3.small"
    # }
    # default = {
    #     mongodb = {
    #         instance_type = "t3.micro" #to access- each.value.instance_type
    #         ami = "ami_id" #to access- each.value.ami
    #     }
    #     redis = "t3.small"
    #     mysql = "t3.small"
    # }
     
}

variable "zone_id" {
    default = "Z07313947YY790RTUIWI"
}

variable "domain_name" {
    default = "krishna.icu"
}