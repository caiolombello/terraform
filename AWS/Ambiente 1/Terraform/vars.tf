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

# Creating a Variable for postgresql_version
variable "postgresql_version" {
  type        = number
  default     = "14.1"
  description = "Version of postgresql"
}

# Creating a Variable for instance_class
variable "instance_class" {
  type = string
}

# Creating a Variable for security_group
variable "security_group" {
  default     = "open_ports"
  description = "Security group name"
}

# Creating a Variable for key_name
variable "key_name" {
  default     = "ansible"
  description = "Key Pair name"
}