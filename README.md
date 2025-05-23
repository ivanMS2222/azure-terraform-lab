# Azure Infrastructure Portfolio with Terraform

This is a modular and scalable Terraform project to provision infrastructure in Microsoft Azure. The project is designed to grow progressively and showcase best practices in infrastructure as code (IaC).

## 📁 Project Structure

```bash
azure-infra-portfolio/
├── main.tf                # Root module: coordinates resources using submodules
├── variables.tf           # Input variables for root module
├── terraform.tfvars       # Values for input variables
├── outputs.tf             # Output values
├── providers.tf           # Provider and version configuration
├── backend.tf             # (Optional) Remote state backend configuration
├── modules/
│   ├── network/           # Virtual Network and Subnets
│   ├── vm/                # Virtual Machine definitions
│   ├── nsg/               # Network Security Groups with inbound rules
│   ├── storage/           # Storage account and blob container
├── ansible/
````

## 🔧 Requirements
• Terraform >= 1.4.0

• Azure CLI (logged in with az login)

• An Azure subscription

## 🚀 Modules Overview

• network/
Creates a Virtual Network (VNet) with one or more subnets.

• vm/
Deploys a Virtual Machine with the ability to attach to a network interface and NSG.

• nsg/
Defines a Network Security Group with predefined rules (e.g. SSH access).

• storage/
Creates a Storage Account and a blob container (e.g. for remote state, logs, etc.)

## 📤 Outputs

Once deployed, Terraform will display output values such as:

• VM Public IP

• Network resource IDs

• Storage account name

## 📌 Notes

• The project is structured to facilitate growth and reuse.

• You can extend it with other modules such as databases, load balancers, or CI/CD integration.
