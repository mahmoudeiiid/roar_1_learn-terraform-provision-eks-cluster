variable "region" {
  default     = "us-east-2"
  description = "AWS region contains the eks cluster"
}
variable "vpc_name" {
  default = "Roar-education-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}
variable "additional_tags" {
  default     = { owner-sso-username = "mahm1845", needed-until-date = "2022-06-30", environment : "playground" }
  description = "Additional resource tags"
  type        = map(string)
}