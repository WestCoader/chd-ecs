variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name to be used for tagging"
  type        = string
  default     = "chd"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}