variable "rsa_key_bits" {
    type    = number
    default = 4096 # for vpn
}

variable "environment" { 
    type    = string 
    default = ""
}

variable "managed_by" {
    type    = string 
    default = ""
}

variable "key_name" { type = string }