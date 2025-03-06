
variable "repository_name" {
  type        = string
}

variable "repository_description" {
  type        = string
  default     = "CHD Demo Repo"
}

variable "repository_visibility" {
  type        = string
  default     = "public"
}

variable "branch_name" {
  type        = string
  default     = "main"
}

variable "status_checks_strict" {
  type        = bool
  default     = true
}

variable "status_checks_contexts" {
  type        = list(string)
  default     = []
}

variable "required_approving_review_count" {
  type        = number
  default     = 1
}

variable "dismiss_stale_reviews" {
  type        = bool
  default     = true
}

variable "require_code_owner_reviews" {
  type        = bool
  default     = false
}

variable "enforce_admins" {
  type        = bool
  default     = true
}

variable "branch_restrictions" {
  type        = list(string)
  default     = []
}
variable "AWS_REGION" {
  type = string
  default = "AWS_REGION"
}

variable "visibility" {
  type = string
  default = "all"
}

variable "aws_region_value" {
  type = string
  default = "us-west-2"
}