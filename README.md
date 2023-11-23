# tfc-demo
Demo for terraform cloud

## Local
First we will look at how we run terraform localy. In this scenario a user will use terrafrom on their laptop. There is a spec to deploy a ec2 instance with required subnets etc. A state file is stored localy once the instances are created. 

![Local](./docs/TF_Local.png)

### Apply
```bash
cd local
terraform init
terraform apply
```

### Delete
```bash
terraform destroy
```

## TFC 
Next we will use TFC using the CLI. This time we use the same commands however we have configured our terrafrom to use TFC which does the work. The statefile now is managed entierley by TFC

![cli](./docs/TF_CLI.png)

### Prerequisites
* [Create a credentials variable set](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-create-variable-set)
* Update org in `main.tf`

```bash
cd cloud-cli
terraform login
terraform init
terraform apply
```