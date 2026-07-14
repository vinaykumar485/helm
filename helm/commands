        Command	                                Purpose
when you want to use existing chart like promethius and grafana, you just use the exising chart by below command , "no need to create the chart"  by using create command ,  

    helm repo list
    helm repo update
    helm repo add <existing-chart-name>
    helm search repo         to search the repo

when you want to create your own appliaction , you have to crete the chart first by below coammdn and then remaing commands 

helm create <chart-name>	                Create a new Helm chart
helm install <release name><chart name>	    Install a local chart
helm list	                                List releases
kubectl get all	                            View created Kubernetes resources
helm template <release name><chart name>	Render templates without installing / give the details resource which are goin to create
helm lint <chart name>	                    Validate the chart
helm uninstall <release name>	            Remove the release
helm uparde <release name> <chart name>     updating the deplyed application /release 
helm hostory <release name>                 it will give the complete revision done till Now
helm hostory <release name> --max 10        gives lasst 10 revisioin    
    verify: 
        kubectl get pod 
helm rollback <release name> <version number>        roll back to previosu /required version
    verify: 
        kubectl get pod
        helm status <release name>
helm uninstall <release name> -n <name space>    unnistalling teh releaee 
    verify:
        kubectl get pod
        kubectl get deployment
        helm list
        helm history <release name>

helm uninstall <release name> --kep-history -n <name space>    unnistalling teh releaee but keeps the history
    by using this history we can reinstal that release again b using below command

    helm rllback <relese name > <revision>


