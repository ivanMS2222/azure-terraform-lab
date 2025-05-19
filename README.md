# Azure-terraform-lab
Infraestructura base en Azure usando Terraform. Despliega redes, subredes y máquinas virtuales de forma modular.

## Estructura

- `main.tf` → orquesta los módulos
- `modules/network` → red y subred
- `modules/vm` → máquinas virtuales

## Cómo usar

1. Instala Terraform y Azure CLI
2. Configura `terraform.tfvars`
3. Ejecuta:

```bash
terraform init
terraform apply
