variable "aws_access_key" {
  type        = string
  description = "AWS Access credentials - Access Key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Access credentials - Secret Key"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "AWS Region for resources"
  default     = "us-east-1"
}

variable "enable_dns_hostname" {
  type        = bool
  description = "Enable DNS Hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_public_subnets_cidr_block" {
  type        = list(string)
  description = "CIDR Block for Public Subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a Public @IP for Subnet instances"
  default     = true
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Instance"
  default     = "t3.micro"
}

# Local variables
variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Company name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Company name for resource tagging"
}

