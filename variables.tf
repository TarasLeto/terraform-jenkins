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
variable "keypath"{
type =string
default = "./var/jenkins_home/workspace/terraform-test2_main/my_terraform_key.pem"
}
