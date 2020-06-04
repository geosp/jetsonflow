sudo k3s kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token
sudo kubectl expose deployment kubernetes-dashboard --type=LoadBalancer --name=kubernetes-dashboard-external -n kubernetes-dashboard
