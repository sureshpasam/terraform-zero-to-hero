data "aws_ssm_parameter" "token" {
  name = "/app/vault/token"
}

data "aws_ssm_parameter" "a_key" {
  name = "/app/vault/A_A_KEY"   AWS_access_Key
}

data "aws_ssm_parameter" "secret_key" {
  name = "/app/vault/A_S_ACCESS_KEY" # AWS_SECRET_ACCESS_KEY
}

data "aws_iam_policy_document" "policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }
  }
}

data "aws_caller_identity" "current" {

}

data "aws_iam_policy" "policy" {
  name = "AdministratorAccess"
}