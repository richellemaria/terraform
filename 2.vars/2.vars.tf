variable "sample"{
    default = "Terraform basics"
}

output "sample_op"{
   value = var.sample
}

output "sample_op_variable"{
    value = "The value of variable is ${ var.sample}"
}

# list variable

variable "example_list"{
    default = [
        "AWS",
        "Devops",
        54,
        "Terraform"
    ]
}

output "example_list_op"{
    value = "welcome to ${var.example_list[1]} with ${var.example_list[0]} this is ${var.example_list[2]} and current topic is ${var.example_list [3]}"
}