# learn-terraform-aws-instance

Provision an AWS EC2 instance using a Terraform `main.tf` file

Terraform terminal commands used:
1. `init` - initialize directory to download and install provider plugin(s)
2. `fmt` - automatically update configurations in directory for readability and consistency
3. `validate` - ensure that configuration is syntactically valid and internally consistent across files
4. `apply` - create the specified infrastructure (EC2 instance in us-west-2 region); instance will be provisioned and launched into a "Running" state
5. `show` - inspect current resource(s) by reading metadata from Terraform's "state" file
6. `state list` - list resources currently saved in Terraform's "state" file
7. `apply` - repeat command to change AMI as edited in `main.tf`; instance is destroyed then recreated since AMI cannot be changed in place
8. `destroy` - terminate resources managed by current Terraform project; does not destroy resources running elsewhere and managed outside of the current Terraform project
---
9. `apply -var "instance_name=AnotherName"` - reset a variable via the command line to modify the instance's name
10. `output` - query defined output values and print them to the terminal when applying configuration