

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
kubectl -n default describe sa
kubectl describe secret -n default kubernetes-dashboard-token-nNNNn
kubectl proxy

http://localhost:8001/api/v1/namespaces/default/services/https:kubernetes-dashboard:https/proxy/#/pod?namespace=default