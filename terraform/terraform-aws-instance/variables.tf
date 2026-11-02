variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "AMI id of RHEL9"
  
}

variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "instance size"
}


variable "sg_ids" {
    type = list
  
}

variable "tags" {
    type = map
  
}