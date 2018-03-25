# kubernetes-gitlab
Kubernetes Manifests for deploying gitlab
These manifests should be enough to deploy gitlab on a kubernetes cluster.  

# pre-requistes:
- kube-lego, https://github.com/jetstack/kube-lego
- ingress-nginx-controller, https://github.com/kubernetes/ingress-nginx

# issues:
- Uses host path as storage, so this will not work correctly on a multi-node cluster (need to use glusterfs maybe?)

# future:
- Make a helm chart which can parameterise the configurations so you don't have to edit each of the manifests and sometimes, repeatedly state the same information over and over
