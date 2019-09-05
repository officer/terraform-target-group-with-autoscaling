variable "ami_id" {
  description = "AMI ID the target group will launch"
  type        = "string"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = "list"
}

variable "desired_count" {
  description = "Number of instance you want to launch initially"
  type        = "number"
}

variable "vpc_id" {
  description = "The VPC Id"
  type        = "string"
}

variable "port" {
  description = "Target port of the target group"
  type        = "string"
}


variable "namespace" {
  description = "namespace of the resources"
  type        = "string"
  default     = "sns"
}

variable "tags" {
  description = "tags for resource"
  type        = "map"
  default     = {
    CreatedBy = "Terraform"
  }
}