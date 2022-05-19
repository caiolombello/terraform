# Creating a Variable for ami of type map
variable "ec2_ami" {
  type = map(any)

  default = {
    sa-east-1 = "ami-0deebba34ef22f5a9"
  }
}

# Creating a Variable for region

variable "region" {
  default = "sa-east-1"
}

# Creating a Variable for instance_type
variable "instance_type" {
  type = string
}

# Creating a Variable for mysql_version
variable "mysql_version" {
  type        = number
  default     = "5.7"
  description = "Version of mysql"
}

# Creating a Variable for instance_class
variable "instance_class" {
  type = string
}
