variable "sg" {
  description = "SG ID for EC2"
  type = string
}

variable "subnets" {
  description = "Subnets for EC2"
  type = list(string)
}

variable "ec2_names" {
    description = "EC2 names"
    type = list(string)
    default = ["tomcat"]
}
variable "mykey" {
    description = "Key pair"
    type = string
    default = "acloud-key"
}