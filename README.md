

cd HAProxy 
vagrant up 
cd ..
cd k8svagrant
vagrant up 
cd ..
cd terraform
terraform init
helm repo update
terraform apply