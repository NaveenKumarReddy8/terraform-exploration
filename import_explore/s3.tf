# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "terraform-backend-naveen-pemmana"
resource "aws_s3_bucket" "mys3" {
  bucket              = "terraform-backend-naveen-pemmana"
  bucket_prefix       = null
  force_destroy       = true
  object_lock_enabled = false
  region              = "ap-south-2"
  tags                = {}
  tags_all            = {}
}
