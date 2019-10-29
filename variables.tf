# Required variables

variable "availability_zones" {
  description = "(Required) Availability zones"
  type        = "list"
}

variable "desired_count" {
  description = "(Required) Number of instance you want to launch initially"
  type        = number
}

variable "vpc_id" {
  description = "(Required) The VPC Id"
  type        = "string"
}

variable "launch_template" {
  description = "(Required) Launch Temaplte id"
  type        = "string"
}

variable "launch_template_version" {
  description = "(Required) The version of launch template"
  type        = "string"
}


# Optional variables
variable "termination_policies" {
  description = "(Optional) termination policies. default OldestLaunchTemplate, OldestLaunchConfiguration, OldestInstance, ClosestToNextInstanceHour"
  type        = "list"
  default     = [
    "OldestLaunchTemplate",
    "OldestLaunchConfiguration",
    "OldestInstance",
    "ClosestToNextInstanceHour"
  ]
}

variable "protocol" {
  description = "(Optional) Protocol that used for communicationg target instance. default HTTP"
  type        = "string"
  default     = "HTTP"
}


variable "port" {
  description = "(Optional) Target port of the target group. default to 80"
  type        = number
  default     = 80
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