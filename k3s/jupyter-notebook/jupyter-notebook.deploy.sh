sudo kubectl apply -f jupyter-notebook.deployment.yaml
sudo kubectl expose deployment jupyter-notebook --type=LoadBalancer --name=jupyter-notebook
