GLOO_VERSION=2.4.0

helm repo add gloo-platform https://storage.googleapis.com/gloo-platform/helm-charts
helm repo update


helm install gloo-platform-crds gloo-platform/gloo-platform-crds \
   --namespace=gloo-mesh --create-namespace \
   --create-namespace \
   --version $GLOO_VERSION



   helm install gloo-platform gloo-platform/gloo-platform \
   --namespace gloo-mesh \
   --version $GLOO_VERSION \
   --values values.yaml \
   --set licensing.glooMeshLicenseKey=$GLOO_MESH_LICENSE_KEY