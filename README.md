                                                Assignment
                                                ==========
                                                
The assignment is to create and then send to Ox Security IAC (Infrastructure as Code) of the
following:
1. A script to deploy a minikube cluster ( ie: minikube start )
2. A script to deploy redis server helm chart on the cluster ( ie: Redis )
3. A helm chart defining a deployment with a single container, that container should have
the ability to connect to the redis server ( ie: redis - Official Image | Docker Hub ). The
deployment should remain up, allowing the user to “exec” into the container to run redis
commands.
4. A script to deploy the above helm chart on the cluster
5. A script to “exec” to the deployment and set a new key in the redis server (OxKey) with a
value (OxValue)
6. A script to “exec” to the deployment and get the value of the key (OxKey) and print it
back out.

Code URL: https://github.com/nagshaik/oxassignment.git
Branch : main

1. Install Minikube
   =======================
 The prerequisite to install and deploy minikube is we need to install docker first
 a. To install docker we need to run "installdocker.sh script". 
     - To run the script we need to use the command --> ./installdocker.sh
 b. Once docker is installed successfully we need to install the minikube. 
     - To install minikube we need to run the "installminikube.sh" script --> ./installminikube.sh.
     - Once the script is ran successfully you can check the minikube by issuing the command "minikube status".

2. Deploy Redis Server helm chart
   ================================
   a. To deploy the Redis server helm chart, we need to install helm
       - To install helm on the minikube cluster, we need to run the "redis.sh" --> ./installhelmchart.sh  
   b. Once the helm is installed successfully on the minikube cluster we need to deploy the Redis server helm chart.
      - To deploy the Redis Server Helm chart we need to run "redis.sh" script --> ./redis.sh
      - By running the above script it will deploy bitnami/redis helm chart into the minikube cluster

3. Redis single Container Helm chart
   ===================================
   a. We need to create a helm chart defining a deployment with single redis container and we should be able to enter into the container to run Redis commands.
       - To create a Helm chart, we need to run "helm create my-redis-chart" command. A Helm chart folder structure will be created.
       - I have created the helm chart based on the folder structure created and pushed the changes into the github repository.
       - By invoking the script "installhelmchart.sh", the helm chart will deploy the single redis container into the minikube cluster. we can check the deployment and pods by giving the command "minikube kubectl get all"

4. Setting the Key Value and Fetching it
   =====================================
a. To enter into the redis container and set a key value by issuing redis commands, we need to run the "setkeyvalue.sh" script. By executing the script the key value is set. We will get "OK" if the key value is successfully set.
b. To fetch the key value we need to run the "fetchkeyvalue.sh" script. Once the script ran successfully we can see the key value which we have set.

   Note : All the above scripts were ran on the AWS EC2 Instance (t2.medium, ubuntu 22.04)
