# Bucket name

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket to create"
}

# Elb Service account arn
variable "elb_service_account_arn" {
  type        = string
  description = "Name of the ALB service account"
}

# Common Tags

variable "common_tags" {
  type        = map(string)
  description = "Map of tags to be applied to all resources"
  default     = {}
}
