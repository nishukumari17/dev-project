variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
  default     = "devsecops-artifact-bucket-nishu"
}

variable "project" {
  description = "Project tag"
  type        = string
  default     = "DevSecOps"
}


variable "kms_key_id" {
  description = "KMS key ID for server-side encryption"
  type        = string
  default     = "alias/aws/s3" # Replace with your CMK ARN if needed
}
