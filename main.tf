resource "aws_lb_target_group" "target_group" {
  name_prefix   = "${var.namespace}-"
  port          = "${var.port}"
  protocol      = "${var.protocol}"
  vpc_id        = "${var.vpc_id}"


}

resource "aws_autoscaling_group" "autoscaling_group" {
  # Basic configurations
  name_prefix           = "${var.namespace}"
  availability_zones    = "${var.availability_zones}"

  # Capacity configurations
  desired_capacity      = "${var.desired_count}"
  max_size              = "${var.desired_count}"
  min_size              = "${var.desired_count}"

  # Health Check configurations

  # Launch configurations
  launch_template {
    id      = "${var.launch_template}"
    version = "${var.launch_template_version}"
  }
  
  
  # Target configurations
  target_group_arns     = [
      "${aws_lb_target_group.target_group.arn}"
  ]

  termination_policies  = "${var.termination_policies}"

  tags  = "${var.tags}"

}
