# ec2-dev-env

IaC for EC2 dev environment

### deployment steps:

1. Generate SSH keys:

   `ssh-keygen -t rsa -b 2048 -f ~/.ssh/ec2-dev-env-keypair`

2. Deploy infrastructure:

   `terraform plan`

   `terraform apply`

https://awstip.com/create-a-development-environment-on-aws-using-terraform-72eb8e204383
