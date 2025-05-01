Terraform Project: Blue-Green Deployment

Overview

This project demonstrates the implementation of a Blue-Green Deployment strategy using Terraform on AWS. It includes the creation and configuration of:
	•	VPC with 3 public subnets
	•	Internet Gateway and Route Table with subnet associations
	•	Security Group with access to ports 22 (SSH) and 80 (HTTP)
	•	Two EC2 instances: blue-group-4 and green-group-4
	•	Application Load Balancer (ALB)
	•	Two Target Groups (blue-tg and green-tg)
	•	Listener configured to switch between target groups
	•	Outputs for EC2 public IPs and ALB DNS

Files
	•	main.tf — main infrastructure configuration
	•	variables.tf — variables used in the project
	•	terraform.tfvars — values for the defined variables
	•	outputs.tf — public IPs and DNS name output

How to Run
	1.	Clone the repository
	2.	Run terraform init
	3.	Run terraform apply
	4.	Open the public IPs or ALB DNS name in a browser

Blue-Green Deployment

The ALB listener initially points to the green target group.
To switch to blue, update the listener block in main.tf and reapply:
target_group_arn = aws_lb_target_group.blue_tg.arn
Outputs
	•	Blue instance IP
	•	Green instance IP
	•	ALB DNS name

Notes
	•	No remote backend used
	•	Bastion host used for SSH access
	•	Apache is installed automatically using user_data

Author

Iana Rodiakina


