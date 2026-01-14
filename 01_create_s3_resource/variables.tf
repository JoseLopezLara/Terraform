variable "aws_region" {
    description = "Name of the region"
    type = string
}

variable "bucket_name" {
  description = "Name of the bucket"
  type = string
}

variable "tags" {
  description = "Tags for resources"
  type = map(string)
}