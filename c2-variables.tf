# Variable Block
variable "aws_region" {
  description = "Default AWS Region"
  type        = string
}

variable "instance_type" {
  description = "Default ec2 instance type"
  type        = string
}

variable "instance_count" {
  description = "Instnace launch count"
  type        = number
}
