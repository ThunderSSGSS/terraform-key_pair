# AWS Key Pair Terraform module

Terraform module which creates a Key Pair to EC2 instances.

## Requirements
The module was tested using:
| Name | Versions |
|------|---------|
| terraform | >= 1.0 |
| aws provider | >= 3.0 |

## Usage

### Creating a Key pair with 4096 bits RSA key
```hcl
module "example_key_pair" {
    source          = ...
    key_name        = "my-key"
    rsa_key_bits    = 4096
    # Tags
    environment     = "test"
    managed_by      = "terraform"
}
```

## Resources

| Name | Type |
|------|------|
| [tls_private_key.key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_key_pair.key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| key_name | The key name of the key pair | string | null | yes |
| environment | Tag 'Environment' of key pair | string | " " | no |
| managed_by | Tag 'Managed_by' of key pair | string | " " | no |
| rsa_key_bits | Number of bits on rsa private key | number | 2048 | no |

## Outputs

| Name | Description |
|------|-------------|
| private_key_pem | The private key |
| key_name | The same key name used on the input |


## DevInfos:
- Name: James Artur (Thunder);
- A DevOps and infrastructure enthusiastics.