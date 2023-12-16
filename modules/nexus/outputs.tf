output "instances" {
  value = aws_instance.nexus.*.id
}