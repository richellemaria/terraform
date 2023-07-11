variable "sample"{
    default = "Terraform basics"
}

output "sample-op"{
   value = var.sample
}

output "sample-op-variable"{
    value = "The value of variable is ${ var.sample}"
}