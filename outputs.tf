output "private_key_pem" {
    value = tls_private_key.key.private_key_pem
}

output "key_name" {
    value = var.key_name
}