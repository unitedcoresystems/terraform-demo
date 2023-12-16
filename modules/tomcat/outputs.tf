output "instances" {
  value = aws_instance.tomcat.*.id
}