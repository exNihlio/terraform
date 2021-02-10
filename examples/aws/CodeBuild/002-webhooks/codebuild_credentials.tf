resource "aws_codebuild_source_credential" "webhook_example" {
    auth_type   = "PERSONAL_ACCESS_TOKEN"
    server_type = "GITHUB"
    ## Note: This token should be secret and it is advised 
    ## to use Hashicorp Vault, SSM parameter store or AWS
    ## Secrets Manager. Do not store secrets in your Terraform code!
    token       = var.github_oauth_token
}