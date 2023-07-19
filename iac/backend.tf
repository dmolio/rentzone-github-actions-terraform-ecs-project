# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "dmolio-terraform-remote-state1"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock1"
  }
}
