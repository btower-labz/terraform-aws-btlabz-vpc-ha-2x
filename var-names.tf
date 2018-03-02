variable "vpc_name" {
  description = "VPC name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "main-vpc"
}

variable "public_a_name" {
  description = "Public subnet A name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "public-a"
}

variable "public_b_name" {
  description = "Public subnet B name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "public-b"
}

variable "private_a_name" {
  description = "Private subnet A name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "private-a"
}

variable "private_b_name" {
  description = "Private subnet B name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "private-b"
}
