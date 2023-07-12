# nextcloud-setup


## Terraform

Inside the terraform folder there are the files stored to setup the nextcloud on hetzner server. Please be ready to insert your Hetzner API Key in the interactive console. The API Key needs to have read and write rights.

    cd terraform
    terraform init
    terraform plan
    terraform apply -auto-approve

Inside the terraform/main.tf you can change via the count variable how many servers you want to create. Possible options would be 3 database servers for a mariadb galera cluster, 5 nextcloud servers for the application and 2 storage servers with minio s3 storage installed which works as primary storage.