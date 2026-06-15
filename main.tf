resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = merge(local.common_tags, {
    Name = "${var.project_name}-${var.environment}-vpc"
  })
}

resource "aws_s3_bucket" "app" {
  bucket = var.s3_bucket_name

  tags = merge(local.common_tags, {
    Name = "${var.project_name}-${var.environment}-bucket"
  })
}
