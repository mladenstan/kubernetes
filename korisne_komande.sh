# Instalacija elastic-a
https://www.linode.com/docs/kubernetes/how-to-deploy-the-elastic-stack-on-kubernetes/#install-metricbeat

# Proxiranje servisa na lokalnoj masini
kubectl port-forward svc/elasticsearch-master 9200:9200

# Update helm revizije zadjeno sa restartom pod-ova
helm rollback --recreate-pods elasticsearch 1

# Da vidimo vrednosti helm-a koji je korisnik podesio (umesto values moze da se koristi all)
helm get values release

# Da islistamo ingress resurs
kubectl get ingress

# Da vidimo detaljno jedan ingress resurs
kubectl describe ingress cheddar

# Rolling restart of the "frontend" deployment
kubectl rollout restart deployment/frontend

# Podesavanje default-nog namespace-a
kubectl config set-context --current --namespace=argocd

# Promena tipa vec postojeceg servisa argocd-server
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# Prikayivanje Events po timestamp-u
kubectl get events --sort-by=.metadata.creationTimestamp

# Prikaz vise podataka o pod-u
kubectl get pod -o wide

# Ulazak u pod
kubectl exec --stdin --tty metricbeat-t2b7h -- /bin/bash

# Delete all evicted pods from all namespaces
kubectl get pods --all-namespaces | grep Evicted | awk '{print $2 " --namespace=" $1}' | xargs kubectl delete pod

# Delete all succeeded pods from all namespaces
oc delete pod --field-selector=status.phase==Succeeded --all-namespaces
