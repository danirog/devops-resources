### IAM Account basics
module "iam_iam-account" {
  source                         = "terraform-aws-modules/iam/aws//modules/iam-account"
  version                        = "5.55.0"
  account_alias                  = var.account_alias
  allow_users_to_change_password = true
  hard_expiry                    = true
  max_password_age               = 180
  minimum_password_length        = 16
  password_reuse_prevention      = 24
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  require_uppercase_characters   = true

}
