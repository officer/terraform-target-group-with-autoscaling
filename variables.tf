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
  type        = number
}

variable "vpc_id" {
  description = "The VPC Id"
  type        = "string"
}

variable "port" {
  description = "Target port of the target group"
  type        = number
}

variable "launch_template" {
  description = "Launch Temaplte id"
  type        = "string"
}

variable "launch_template_version" {
  description = "The version of launch template"
  type        = "string"
}


variable "namespace" {
  description = "namespace of the resources"
  type        = "string"
  default     = "sns"
}

variable "tags" {
  description = "A list of tag blocks (maps). Tags documented below. details https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html"
  type        = "list"
  default     = [
    {
      key                 = "CreatedBy"
      value               = "Terraform"
      propagate_at_launch = true
    }
  ]
}