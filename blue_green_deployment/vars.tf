variable "name" {
  description = "the name of your stack, e.g. \"demo\""
  default = "mahi"
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
  default = "test"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnets"
   default = ["10.0.1.0/24", "10.0.2.0/24"]
  type = list
}

variable "private_subnets" {
  description = "List of private subnets"
   default = ["10.0.3.0/24", "10.0.4.0/24"]
  type = list
}

variable "availability_zones" {
  description = "List of availability zones"
    default = ["ap-south-1a", "ap-south-1b"]
  type = list
}

# variable "vpc_id" {
#   description = "The VPC ID"
  
# }

variable "container_port" {
  description = "Ingres and egress port of the container"
  default = 80
}
variable "vpc_cidr" {
  description = "Public Subnet"
  default ="10.0.0.0/16"
}

variable "container_image" {
    description = "the image of the container"
    default = "073777684184.dkr.ecr.ap-south-1.amazonaws.com/mahiecr:latest"
  
}
variable "container_cpu" {
    description = "cpu of the container"
    default = 10
  
}
variable "container_memory" {
    description = "memory of container"
    default = 512
  
}
variable "region" {
    default = "ap-south-1"
  
}



# variable "vpc_id" {
#   description = "VPC ID"
# }

# variable "alb_security_groups" {
#   description = "Comma separated list of security groups"
# }
/*
variable "alb_tls_cert_arn" {
  description = "The ARN of the certificate that the ALB uses for https"
}
*/
variable "health_check_path" {
  description = "Path to check if the service is healthy, e.g. \"/status\""
  default = "/"
}