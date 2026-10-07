resource "aws_s3_bucket" "avis_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "${var.project_name}-bucket301105"
  }

}