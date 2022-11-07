resource "tls_private_key" "key" {
    algorithm = "RSA"
    rsa_bits  = var.rsa_key_bits
}

resource "aws_key_pair" "key_pair" {
    key_name   = var.key_name
    public_key = tls_private_key.key.public_key_openssh

    tags = {
        Environment = var.environment
        Managed_by  = var.managed_by
    }
}