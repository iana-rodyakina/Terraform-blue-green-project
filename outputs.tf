output "blue_instance_public_ip" {
  description = "Public IP address of the blue EC2 instance"
  value       = aws_instance.blue.public_ip
}

output "green_instance_public_ip" {
  description = "Public IP address of the green EC2 instance"
  value       = aws_instance.green.public_ip
}

output "load_balancer_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}