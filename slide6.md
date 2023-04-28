
layout: false
class:  compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Generate AWS Creds
count: true




## Generate temporary AWS credentials

Use Terraform to generate dynamic AWS credentials
```hcl
data "vault_aws_access_credentials" "example_creds" {
  backend = vault_mount.aws.path
  role    = vault_aws_secret_backend_role.example_role.name
}
output "access_key" {value = data.vault_aws_access_credentials.example_creds.access_key
}
output "secret_key" {value = data.vault_aws_access_credentials.example_creds.secret_key
}

```
*vault_aws_access_credentials* is defined to fetch dynamic AWS credentials.
*vault_aws_access_credentials* data source is configured to use the example_role role created earlier.  
*Terraform* outputs the *access key* and *secret key* retrieved from *Vault*.

???


