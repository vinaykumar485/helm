Installing Helm
Objective

Install Helm
Verify the installation
Understand the Helm CLI
Add a Helm Repository
Search for Charts
Install your first application
View Releases
Uninstall a Release
-----------------------------------------------------------------------------------------------
pre-requisets

AWS cli installed
kubelet installed   ( Reffer the kunernets installtion page)
verify 
    kubectl get nodes
-----------------------------------------------------------------------------

Download Helm

    curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

Verify Installation

    helm version
-----------------------------------------------------------------------------------------------

Check Existing Repositories

   Repositories are places where Helm Charts are stored. Initially, you may have none.

    helm repo list

Add a Repository:

    helm repo add bitnami https://charts.bitnami.com/bitnami

There are many Repositories, Here are a few examples:

Repository	                    Common Charts
Bitnami                     	NGINX, MySQL, Redis, PostgreSQL, Jenkins
Prometheus Community	        Prometheus, Alertmanager, Grafana Stack
ingress-nginx	                NGINX Ingress Controller
Argo	                        Argo CD, Argo Workflows
Elastic	                        Elasticsearch, Kibana, Logstash

Each repository specializes in different applications.

You want to install Prometheus
        helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
You want to install Argo CD
        helm repo add argo https://argoproj.github.io/argo-helm
so on.. 


Verify the Repository
    helm repo list
-----------------------------------------------------------------------------------------------

Update Repository
This downloads the latest chart information.

    helm repo update

Search for Charts: inside the above added  repo:

in this we will use example as Search for NGINX:

    helm search repo nginx
-----------------------------------------------------------------------------------------------
Install Your First Helm Chart
--------------------------------------

and the above command  is for using and creting the existing charts like for promethuis , grfana, nginx etc.. 

1. helm repo list
2. helm repo add bitnami https://charts.bitnami.com/bitnami


if you want to create your one chart and you want to install it then you have to use 

    helm create <chart- name>
ex:
    helm create my-first-chart

        my-first-chart - chart name 


example : Install vinay

    helm install vinay my-first-chart

        where vinay             - release
              my-first-chart    - chart

Check the Release
    helm list

    output will be as below
    
    NAME        NAMESPACE    REVISION    STATUS      CHART
    my-nginx    default      1           deployed    nginx-21.x.x

-----------------------------------------------------------------------------------------------

Check Kubernetes Resources

    kubectl get all

You should see resources such as:

    Pod
 
    Deployment etc..
-----------------------------------------------------------------------------------------------

Check Release Details
    helm status <release name> 
-----------------------------------------------------------------------------------------------

View Release History

    helm history <relaese name>

output will be Initially:

REVISION    STATUS      DESCRIPTION
1           deployed    Install complete

-----------------------------------------------------------------------------------------------


Uninstall the Release
    helm uninstall my-nginx

This removes the release and the Kubernetes resources created by it.

Verify:

    helm list

It should no longer appear.
-----------------------------------------------------------------------------------------------


--set & -f command

--set is used to over ride the value from the commad line insted of editing the values.yaml file 

-f command is used to over ride the values in specific values.yaml file whem there are multipe values.yaml file

Eg: 

consider you have prod-values.yaml in which 
	replicas = 5 
	images=ubuntu
	   tag = 1.25
 
which will result in creating the 5 replicas 

now you want to make the rplicas 10, so insted of editing the prod-values.yaml file, we can use --set command as below.

	helm install < release name >  --set replicaCount=10 

suppose you have to change image name also then we can use below command  ( for multiple values override )

helm install <release name> --set replicasCount=10,--set image=nginx


if you want to update the sub metadata like tag then along with --set we have to use "." 

	helm nstal release name> . --set replicas=10,image=nginx,tag=1.30


---------

suppose you have mutiple environemt like prod , Dev and you have to change only in Dev , tere comes the '-f' command 

Eg: you have 

prod-values.yaml 

replicaCount = 3 
image = ubuntu



Dev-values.yaml

replicasCount = 4
image = nginx 

now you want to override the values of Dev-values.yaml file and keep Prod-Values.yaml files as it is with out any chnages.

	helm install < releae name >  --set replicas=10 -f Dev-values.yaml
the over ride method follows as below


--set override -f 
-f override values.yaml
-----------------------------------------------------------------------------------------------------------------------------------------

 

















