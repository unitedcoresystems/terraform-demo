output "instances" {
  value = aws_instance.jenkins.*.id
}