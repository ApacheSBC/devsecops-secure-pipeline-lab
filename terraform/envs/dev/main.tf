provider "aws" {
  region = var.aws_region
}

module "site" {
  source      = "../../modules/s3_static_site"
  bucket_name = var.bucket_name
}

