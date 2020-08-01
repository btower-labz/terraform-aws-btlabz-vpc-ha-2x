variable "vpc_cidr" {
  description = "VPC CIDR range."
  type        = string
  default     = "172.18.0.0/16"
}

variable "public_a_cidr" {
  description = "Public network A CIDR range."
  type        = string
  default     = "172.18.1.0/24"
}

variable "public_b_cidr" {
  description = "Public network B CIDR range."
  type        = string
  default     = "172.18.2.0/24"
}

variable "private_a_cidr" {
  description = "Private network A CIDR range."
  type        = string
  default     = "172.18.11.0/24"
}

variable "private_b_cidr" {
  description = "Private network B CIDR range."
  type        = string
  default     = "172.18.12.0/24"
}

