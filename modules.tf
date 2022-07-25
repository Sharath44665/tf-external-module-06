module "external_module" {
  source = "github.com/wardviaene/terraform-consul-module.git"
  key_name="${aws_key_pair.mykey.key_name}"
  key_path="${var.PATH_TO_PRIVATE_KEY}"
}

output "outputname" {
  value="${module.external_module.server_address}"
}