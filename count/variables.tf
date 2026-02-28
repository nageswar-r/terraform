variable "instances" {
  type = list
  default = ["mongodb", "mysql", "redis", "user", "nginx", "rabbitmq", "frontend", "cart", "catalogue", "shopping", "payment"]
}

variable "zone_id" {

    default = "Z086001213PRS8PI96NCE"
  
}

variable "domain_name" {
    default = "sandh.co.in"
  
}