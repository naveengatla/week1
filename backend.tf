# This backend configuration instructs Terraform to store its state in an S3 bucket.
terraform {
  backend "s3" {
    bucket         = "week1-backend-bucket"  # Name of the S3 bucket where the state will be stored.
    key            = "week1/backend/terraform.tfstate" # Path within the bucket where the state will be read/written.
    region         = "us-east-1" # AWS region of the S3 bucket.
    dynamodb_table = "terraform-state-lock" # DynamoDB table used for state locking.
    encrypt        =     true # Encrypts the state file in S3 bucket.
  }  
}
