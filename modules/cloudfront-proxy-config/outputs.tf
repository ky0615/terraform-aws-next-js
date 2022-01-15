output "config_endpoint" {
  value = "${aws_cloudfront_distribution.distribution.domain_name}/${local.proxy_config_key}"
}

output "proxy_config_store_bucket_access_identity" {
  value = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
}

output "proxy_config_store_bucket_endpoint" {
  value = aws_s3_bucket.proxy_config_store.bucket_regional_domain_name
}

output "proxy_config_store_bucket_id" {
  value = aws_s3_bucket.proxy_config_store.id
}

output "proxy_config_store_bucket_arn" {
  value = aws_s3_bucket.proxy_config_store.arn
}
