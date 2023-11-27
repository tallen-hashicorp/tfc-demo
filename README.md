# TFC Demo

This repository serves as a demonstration of using Terraform in various scenarios: locally, with Terraform Cloud (TFC) via the CLI, and in a version-controlled setup.

## Local Deployment

In the local scenario, a user runs Terraform on their laptop to deploy an EC2 instance with required subnets. The state file is stored locally once the instances are created.

![Local Deployment](./docs/TF_Local.png)

### Apply Locally

```bash
cd local
terraform init
terraform apply
```

### Delete Locally

```bash
terraform destroy
```

## Terraform Cloud (TFC) with CLI

Next, we explore the use of Terraform Cloud (TFC) via the CLI. In this scenario, Terraform configurations are executed remotely in TFC, and the state file is managed entirely by TFC.

![TFC CLI](./docs/TF_CLI.png)

### Prerequisites for TFC CLI

1. [Create a credentials variable set](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-create-variable-set).
2. Update the organization in `main.tf`.

### Apply with TFC CLI

```bash
cd cloud-cli
terraform login
terraform init
terraform apply
```

## Version Control System (VCS)

In the version-controlled setup, Terraform configurations are integrated with a version control system (VCS). Changes trigger automated runs in Terraform Cloud, providing a collaborative and auditable workflow. 

![VCS Integration](./docs/TF_VCS.png)

For detailed information on VCS integration, please refer to the documentation of your chosen VCS provider.

Feel free to explore each scenario based on your use case and infrastructure requirements.

# Dynamic Credentials with the Vault Provider

You can use Terraform Cloud’s native OpenID Connect integration with Vault to get dynamic credentials for the Vault provider in your Terraform Cloud runs. Use the [Vault-Backed Dynamic Credentials with the AWS Provider](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/vault-backed/aws-configuration) guide.
