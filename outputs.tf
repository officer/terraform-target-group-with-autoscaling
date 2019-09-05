output "autoscaling_group" {
  value = "${aws_autoscaling_group.autoscaling_group}"
}

output "target_group" {
  value = "${aws_lb_target_group.target_group}"
}
