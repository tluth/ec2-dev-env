# ec2-dev-env

IaC for EC2 dev environment

### deployment steps:

1.  Generate SSH keys:

    mac/linux:

         ssh-keygen -t rsa -b 2048 -f ~/.ssh/ec2-dev-env-keypair

    windows:

         I dunno. I'll google it later ¯\_(ツ)_/¯

2.  Deploy infrastructure:

         terraform plan
         terraform apply

### connecting

mac/linux:

      chmod 400 ec2-dev-env-keypair
      ssh -i ~/.ssh/ec2-dev-env-keypair -o StrictHostKeyChecking=no ubuntu@<EC2 public IP>

---

Credit to Dhruv:
https://awstip.com/create-a-development-environment-on-aws-using-terraform-72eb8e204383
