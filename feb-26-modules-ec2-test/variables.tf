variable "project_name" {
    default = "roboshop"
}

variable "env" {
    default = "dev"  
}

variable "instance_type" {
  default = "t3.small"
}
variable "sg_ids" {
    default = ["sg-0a7b91aa77cf9de83"]
}

variable "component" {
    default = "catalogue"
}