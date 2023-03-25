#!/bin/bash
# List the IGDs
kubectl get ingressgatewaydeployments -n bookinfo

# Delete the IGDs
kubectl delete ingressgatewaydeployments/bookinfo-ingress-gateway-deployment -n bookinfo


# List existing labels for the bookinfo namespace
kubectl get namespace bookinfo --show-labels

# Set the label to disabled
kubectl label namespace bookinfo servicemesh.oci.oracle.com/sidecar-injection=disabled --overwrite


# List all deployments in bookinfo namespace
kubectl get deployments -n bookinfo

# Rollout restart the deployments in bookinfo namespace
kubectl rollout restart deployment/details-v1 -n bookinfo
kubectl rollout restart deployment/productpage-v1 -n bookinfo
kubectl rollout restart deployment/ratings-v1 -n bookinfo
kubectl rollout restart deployment/reviews-v1 -n bookinfo
kubectl rollout restart deployment/reviews-v2 -n bookinfo
kubectl rollout restart deployment/reviews-v3 -n bookinfo

# List all VDBs in bookinfo namespace
kubectl get virtualdeploymentbindings -n bookinfo

# Delete all VDBs in bookinfo namespace
kubectl delete virtualdeploymentbindings/details-v1-binding -n bookinfo
kubectl delete virtualdeploymentbindings/productpage-v1-binding -n bookinfo
kubectl delete virtualdeploymentbindings/ratings-v1-binding -n bookinfo
kubectl delete virtualdeploymentbindings/reviews-v1-binding -n bookinfo
kubectl delete virtualdeploymentbindings/reviews-v2-binding -n bookinfo
kubectl delete virtualdeploymentbindings/reviews-v3-binding -n bookinfo

# List all APs in bookinfo namespace
kubectl get accesspolicies -n bookinfo

# Delete all APs in bookinfo namespace
kubectl delete accesspolicies/bookinfo-policy -n bookinfo

# List all VSRTs in bookinfo namespace
kubectl get virtualserviceroutetables -n bookinfo

# Delete all VSRTs in bookinfo namespace
kubectl delete virtualserviceroutetables/details-route-table -n bookinfo
kubectl delete virtualserviceroutetables/productpage-route-table -n bookinfo
kubectl delete virtualserviceroutetables/ratings-route-table -n bookinfo
kubectl delete virtualserviceroutetables/reviews-route-table -n bookinfo

# List all IGRTs in bookinfo namespace
kubectl get ingressgatewayroutetables -n bookinfo

# Delete all IGRTs in bookinfo namespace
kubectl delete ingressgatewayroutetables/bookinfo-ingress-gateway-route-table -n bookinfo

# List all IGs in bookinfo namespace
kubectl get ingressGateways -n bookinfo

# Delete all IGs in bookinfo namespace
kubectl delete ingressGateways/bookinfo-ingress-gateway -n bookinfo

# List all VDs in bookinfo namespace
kubectl get virtualDeployments -n bookinfo

# Delete all VDs in bookinfo namespace
kubectl delete virtualDeployments/details-v1 -n bookinfo
kubectl delete virtualDeployments/productpage-v1 -n bookinfo
kubectl delete virtualDeployments/ratings-v1 -n bookinfo
kubectl delete virtualDeployments/reviews-v1 -n bookinfo
kubectl delete virtualDeployments/reviews-v2 -n bookinfo
kubectl delete virtualDeployments/reviews-v3 -n bookinfo

# List all VSs in bookinfo namespace
kubectl get virtualServices -n bookinfo

# Delete all VSs in bookinfo namespace
kubectl delete virtualServices/details -n bookinfo
kubectl delete virtualServices/productpage -n bookinfo
kubectl delete virtualServices/ratings -n bookinfo
kubectl delete virtualServices/reviews -n bookinfo

# List all Meshes in bookinfo namespace
kubectl get meshes -n bookinfo

# Delete all Meshes in bookinfo namespace
kubectl delete meshes/bookinfo -n bookinfo
