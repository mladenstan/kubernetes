# kada hocemo da preko racunara pristupimo dashboad-u
kubectl proxy

# link za prsitup
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

# Pristup ClusterIP servisu
kubectl port-forward deployment/kibana-kibana 5601

# Da vidimo koje sve postoje konfigursaini ingress-i
kubectl get ingress

# Kada izmenimo na primer confimap moramo da restartujemo rucno te pod-ove da bi se noga konfiguracija primenila
kubectl rollout restart daemonset/fluentd
