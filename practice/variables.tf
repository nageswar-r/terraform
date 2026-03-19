variable "project" {
    type = string
    default = "roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
    type = map 
    default = {}
  
}

variable "public_subnet"{
    type = string
    default = "10.0.1.0/24"
}

variable "public_subnet_tags" {
    type = map 
    default = {}
  
}