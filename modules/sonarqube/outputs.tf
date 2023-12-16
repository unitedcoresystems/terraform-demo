output "instances" {
  value = aws_instance.sonarqube.*.id
}