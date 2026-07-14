{{ define "my-chart.fullname" -}}
my-nginx
{{- end -}}

#here we are defining the value of "my-chart.fullname" as "my-nginx" and calling this value in deployment.yaml and service,.yaml files 
#
#
#consider you have mentioned 
#metadata:
#   name: my-nginx in all the file like deployment.yaml and service.yaml and ingress.yaml files and 
#now manager tells you to chnage the name to 'vinay-nginx" , 
#so what you will do now, you are going to edit all the file for chnaging it, 
#so to avoid editing all yaml files ,
#helm provdes this "defining in helpers.tpl and calling itin deployment and service and other files " 
