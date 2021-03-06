######
# VPC
######
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = ""
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "cidr" {
  description = "The cidr range for network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of cidr ranges for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  description = "List of cidr ranges for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v2.15.0"
  name   = var.vpc_name

  tags = var.tags

  enable_nat_gateway     = false
  single_nat_gateway     = false
  one_nat_gateway_per_az = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_public_redshift = true

  azs  = var.azs
  cidr = var.cidr

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.id}" = "shared"
    "kubernetes.io/role/elb"          = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.id}" = "shared"
    "kubernetes.io/role/internal-elb" = "1"
  }
}