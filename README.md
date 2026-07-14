        Command	                                Purpose
when you want to use existing chart like promethius and grafana, you just use the exising chart by below command , "no need to create the chart"  by using create command ,  

    helm repo list
    helm repo update
    helm repo add <existing-chart-name>
    helm search repo         to search the repo

when you want to create your own appliaction , you have to crete the chart first by below coammdn and then remaing commands 

1.helm create <chart-name>	                Create a new Helm chart
2.helm install <release name><chart name>	    Install a local chart
3.helm list	                                List releases
4.kubectl get all	                            View created Kubernetes resources
5.helm template <release name><chart name>	Render templates without installing / give the details resource which are goin to create
6.helm lint <chart name>	                    Validate the chart
7.helm uninstall <release name>	            Remove the release
8.helm uparde <release name> <chart name>     updating the deplyed application /release 
9.helm hostory <release name>                 it will give the complete revision done till Now
10.helm hostory <release name> --max 10        gives lasst 10 revisioin    
    verify: 
        kubectl get pod 
11.helm rollback <release name> <version number>        roll back to previosu /required version
    verify: 
        kubectl get pod
        helm status <release name>
12.helm uninstall <release name> -n <name space>    unnistalling teh releaee 
    verify:
        kubectl get pod
        kubectl get deployment
        helm list
        helm history <release name>

13.helm uninstall <release name> --kep-history -n <name space>    unnistalling teh releaee but keeps the history
    by using this history we can reinstal that release again b using below command

    helm rllback <relese name > <revision>


