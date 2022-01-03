variable "instance_type" {
    type = string
    description = "type of ec2 instance"

}

variable "volume_size" {
    type = int
    description = "size of root volume"
    default = 50
}

variable "keypair" {
    type = string
    description = "name of keypair to launch instance with"
}