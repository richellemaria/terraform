module "ec2" {
  source = "./ec2"
  sg = module.sg.sgid                                    #step 2 pass the output declared in source module to root module
}

module "sg" {
  source = "./sg"
}

output "public_ip_address"{
    value = module.ec2.private_ip                        #fetch declared output
}