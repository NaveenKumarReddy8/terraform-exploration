locals {
  user_names  = data.aws_iam_users.account_details.names
  total_users = length(data.aws_iam_users.account_details.names)
}