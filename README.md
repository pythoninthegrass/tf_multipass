# tf_multipass

[Terraform](https://www.terraform.io/) + [Multipass](https://multipass.run/) = :heart:

## Quickstart
```bash
terraform init
terraform fmt       # optional
terraform validate
terraform plan -out tfplan
terraform apply tfplan
```

## Terraform Module Structure

| File/Folder                 | Description                                       |
|-----------------------------|---------------------------------------------------|
| main.tf                     | Main calling module                               |
| multipass_module/           | Main module folder                                |
| multipass_module/main.tf    | Main Terraform module                             |
| multipass_module/provider.tf| Link to the provider in the main root folder      |
| multipass_module/vars.tf    | Variables passed to the main Multipass module     |
| provider.tf                 | Main provider for Multipass version 1.4.2         |
| cloud-init.yml              | Bootstrap installation of packages, SSH keys, and VM upgrade |
| variables.tf                | Variables used by the module and default settings |
| outputs.tf                  | Output variables from the module                  |

## Development
* Auto changelog via conventional commits: [Commitizen](https://commitizen-tools.github.io/commitizen/)
```bash
# install commitizen
npm install -g commitizen       # npm
npm install                     # npm
brew install commitizen         # brew

# commit changes
git add .

# use commitizen to commit changes
git cz
```

## Further Reading
[larstobi/terraform-provider-multipass](https://github.com/larstobi/terraform-provider-multipass)

[Terraform Provider for Multipass Hypervisor](https://registry.terraform.io/providers/larstobi/multipass/1.4.2)  
