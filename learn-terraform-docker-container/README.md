# learn-terraform-docker-container

Provision a simple NGINX web server in a Docker container using a Terraform `main.tf` file

Terraform terminal commands used:
1. `init` - initialize project working directory and download Docker "provider" plugin, based on main.tf configuration file
2. `apply` - provision a Docker container running an NGINX server on local host
3. `destroy` - stop and delete the Docker container
