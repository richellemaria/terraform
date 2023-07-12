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

# map variable

variable "example_map"{
    default = {
        Batch = "B54"
        Training = "DevopsAWS"
        Mode = "online"

    }
}

output "example_map_op"{
    value = "We are learning  ${var.example_map["Training"]} and this is ${var.example_map["Batch"]} and it is ${var.example_map["Mode"]}"
}

