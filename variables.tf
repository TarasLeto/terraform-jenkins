variable "my-access-key" {
    type= string
	default = "AKIATZGP3ZVGBPJN4D6Q"
}
variable "my-secret-key" {
	type= string
   default = "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"
	}
variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
	default= "ami-0149b2da6ceec4bb0 "
}
variable "instance_type" {
type = string 
	default ="t2.micro"
}
variable "key" {
type = string 
default ="my_terraform_key"
}
variable "privatekeypath" {
	type = string
	default ("./terrafrom-jenkins/my_terraform_key.pem")
}
