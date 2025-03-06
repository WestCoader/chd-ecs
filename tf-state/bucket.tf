resource "aws_s3_bucket" "chd_state" {
  bucket = "chd-state"
     
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "chd_state" {
    bucket = aws_s3_bucket.chd_state.id

    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_dynamodb_table" "chd_state_lock" {
  name           = "chd-state"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}