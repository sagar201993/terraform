output "vpc_id" {
  description = "ID of the created VPC."
  value       = aws_vpc.main.id
}

output "s3_bucket_id" {
  description = "Name of the created S3 bucket."
  value       = aws_s3_bucket.app.id
}

output "aws_region" {
  description = "AWS region used by this configuration."
  value       = var.aws_region
}
