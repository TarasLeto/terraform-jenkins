variable "my_access_key" {
    type= string
	default = "AKIATZGP3ZVGIQUWHTBQ"
}
variable "my_secret_key" {
	type= string
   default = "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"
	}
variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
	default = "ami-08c40ec9ead489470"
}
variable "instance_type" {
type = string 
	default ="t2.micro"
}
variable "key" {
type = string 
default ="my_terraform_key"
}
variable "privatekeyvalue" {
	type = string
	default = " << EOF 
	-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEArzZM15ZaTpswLvo/gxoHoM5lU6Et1O7dP8w7xUPLxXLRXpcs
L6wGpPWbCTqaelCOEgsIYtkFm3DqYy4XrQ6BQzV6gwVw/KRx0a92saHc/DF88F8A
faZMKCZjVm6LLoWS2HRBMgSBt/HaUFV1907WS4FnzOcuyOqVDqFgiR7sEPu12qao
p+6SPwYCom29qXwoJLQp0xjFE7yFiBbbn4ChljsO7oD69QaZd2HyD4ue+6td2GtX
XPuE8PLz3tP9kMGn6qTP3+r68bl3E9tNQPvCmYF8FbSX1yMkJqJ448XN2PrJ7LcL
G03VAK++IqUQnETOSWGLXVJsifA6mFyFmQTtiwIDAQABAoIBAG5Tn9FEsHq8x3td
Qm7YDiOYsz8Ux9pDyndor95IEWC0KtgIEt+1z71Bli0ahLkuTjdYUSCFDT3SvRRU
qr3i20wpuYoU/A9psO3bMb8qcA8xTj3BZHq6I0xI19ZN50AVBeFcWs0W/2OHW/On
zI88Sj3jLyxcCh6jb9Z1kWbmXLlX6A8xnZl89kUeW5t+FVIWyvQq+NH9M+VYmT+O
gXnvIX0lwHKpZ0Ll6xFn9cZxGM516/cKs8TX3apcfA+J7ZJE/avVQBfywcWZlkqk
XU7RpqCA5owPDSCz5vmLnbyJeilv+/dIZzJJoEiqot8eepnQ97oq2tYED4wtOAyw
dJ3GzUkCgYEA+F30X5fKQ65H3U/ECTR02lMPm9wqyFNBFVU9C0IHF2qI2CPSx7SG
xHGWWT/bsQBFBtrKqszf75Bb9HAZPGhsctt/AK/+AzJN5Q6OxM5MFvkvwXMsZOKb
mkuWAgqisORbR72rG7AUZkF3apuebVyJg0Ez+w3tH+WFXiMsh1/zkD8CgYEAtJjL
SwKjt0lH2+yJWtPt1QZHrP6nIbC6eX8pYtVVyUu6w9T/cRfCg4gJpkILHQakZzm8
Rk6jYzCGLwT8Eg5kewxWhqE6NZaXu9sPugAdLAG99H7HC6uAaaTwJLzXdpcsLtHG
T3HekPt2dqQLMvHxPdlB3I7m0AmGCY015ASTz7UCgYBtfSXMumKdQYhGxPI7yJc2
4+T+palqlGEdoWz+uIXdycY32lsCVNAQa66G+8LCncbQRcWQVC7oMjCHap+FZNdi
LucnC26kRBnYv3kqw3MBsape0oIgm1FTTLz9e2jLKHAhCTkURKRJi9Sz95R4y5GH
fkgHBdWh+RG5NTJdH2yFCwKBgQCoWn+5D17bMB8i72AkIchme5I5vLLE/2D2fgpw
rftoyYXzpQ3zuXiE8T49lPeTOWvtJq9Sw2AgyU1ta7Ioiu40nw3SN15yMk6EuvPw
KscHDSCtWbnoMRpmYXHUbY5WaRqxErFRwg7/DMwkUUx3U3/Wbj+tgjG84gPnx5Hj
XDkGuQKBgQDezMBr7keVaA7/WBJ2B6U0UDCL8Bp0dZSAKgHcP7gnOk3x9UZj1dnm
TF7SvoZJM6GUXH5jPvIPxR0P5Lb5uvUIW403nVrkEikLftI3i6ct4ic1LFKkMIX6
3/s+xx0Bkj5yBGZh5zBujOIX8wxVB26Zch9oMOO9Xhd7yeyS/64XjQ==
-----END RSA PRIVATE KEY-----
EOF "
}
