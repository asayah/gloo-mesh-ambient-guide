# Client Team
kubectl create ns client 
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/sleep/sleep.yaml -n client


# Bookinfo Team
kubectl create ns bookinfo 
kubectl -n bookinfo apply -f https://raw.githubusercontent.com/istio/istio/1.18.2/samples/bookinfo/platform/kube/bookinfo.yaml 

