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