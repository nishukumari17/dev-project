resource "aws_s3_bucket" "artifact" {
  bucket = "my-artifact-bucket-nishu"

  logging {
    target_bucket = "mydevopsbucket17"
    target_prefix = "logs/"
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = "arn:aws:kms:ap-south-1:251294205751:key/438ff320-b50b-459d-9379-7f01268a739b"
      }
    }
  }

  tags = {
    Name    = "my-artifact-bucket-nishu"
    Project = "DEVSECOPS"
  }
}

resource "aws_s3_bucket_public_access_block" "artifact_block_public" {
  bucket                  = aws_s3_bucket.artifact.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
