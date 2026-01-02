resource "aws_iam_user" "user_with_account_id" {
  name = "admin-user-${data.aws_caller_identity.current.account_id}"
}

output "user_names" {
  value = local.user_names
}
output "total_users" {
  value = local.total_users
}