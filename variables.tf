variable "region"{
  description = "Location of S3"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket"
  type        = string
  default     = "my123pocbucket"
}

variable "enable_logging" {
  type    = bool
  default = true
}

variable "logging_target_bucket" {
  description = "The name of the bucket where the access logs will be stored"
  type        = string
  default     = "securityhub-finding-account-name-and-id-list"
}

variable "logging_target_prefix" {
  description = "A prefix for the log object keys"
  type        = string
  default = "log/"
}

variable "destination_bucket" {
  type        = string
  description = "Destination AWS region for cross-region replication"
  default = "arn:aws:s3:::securityhub-finding-account-name-and-id-list"
}

variable "sns_topic_name" {
  description = "Name of the SNS topic"
  type        = string
  default = "abc"
}

variable "kms_key_arn" {
  description = "Map containing server-side encryption configuration."
  type = string
  default = "arn:aws:kms:us-east-1:996542365363:key/1da5ce9d-6aa6-4447-9b62-2ea001c6316b"  
}

variable "enable_bucket_notification" {
  type    = bool
  default = true
}

variable "create_sns_topic" {
  description = "Whether to create a new SNS topic for bucket notifications"
  type        = bool
  default = true
}

variable "enable_replication" {
  type    = bool
  default = true
} 

variable "block_public_acls" {
  type = bool
  default = true 
}

variable "block_public_policy" {
  type = bool
  default = true 
}

variable "ignore_public_acls" {
  type = bool
  default = true 
}

variable "restrict_public_buckets" {
  type = bool
  default = true 
}

variable "enable_versioning" {
  type = bool
  default = true
 
}

variable "days_after_initiation" {
  description = "S3 bucket lifecycle configuration initiation days after abort"
  type = number
  default = 7
  
}

variable "rule_id" {
  description = "Rule ID for Lifecycle Configuration"
  type = string
  default = "Abort incomplete Multipart Uploads after 7 days"
  
}

variable "rule_status" {
  description = "Rule Status for Lifecycle Configuration"
  type = string
  default = "Enabled"
  
}

variable "noncurrent_days_expiration" {
  description = "noncurrent version expiration for Lifecycle Configuration"
  type = number
  default = 45
  
}

variable "expired_object_delete_marker" {
  description = "expired object delete marker for Lifecycle Configuration"
  type = bool
  default = true
  
}

variable "expired_object_delete_marker_status" {
  description = "expired object delete marker status for Lifecycle Configuration"
  type = string
  default = "Enabled"
  
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Project = "MyProject"
  }
}
