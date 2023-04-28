
layout: false
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Configuration
count: true
layout: false



##  Configuring AWS Credentials in Vault

Add your AWS access keys to Vault:

```hcl
resource "vault_generic_secret" "aws_credentials" {
  path = "${vault_mount.aws.path}/config/root"

  data_json = jsonencode({
    access_key = "your_aws_access_key"
    secret_key = "your_aws_secret_key"
  })
}

```
A new Vault generic secret is created at /aws/config/root with your AWS access key and secret key as its data.
???


This text will appear after the first fragment is shown
