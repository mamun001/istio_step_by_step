
#
## STEP BY STEP GUIDE FOR INSTALLING & SETTING ISTIO SERVICE MESH
## ................. ON KUBERNETES CLUSTER ......................


###    Use this step-up-step guide if you want to learn how to install istio service mesh 
###    On a Kubernetes cluster so that you can get all the benefits of a service mesh.
#


###    By: Mamun Rashid
### #   Connect with me on Linkedin: https://www.linkedin.com/in/mamunrashid/
#

#

## Pre-requisites
#

#


### 1. MacOS or Ubuntu Linux
        I will add Windows equivalent later.
### 2. Access to a GCP project
     Take a note of the project name:
       e.g. foobar-project

### 3. kubernetes Engine API is enabled on that GCP project
        e.g. https://console.cloud.google.com/apis/api/container.googleapis.com/overview

### 4. Your GCP account has permission to admin k8s clusters

### 5. gcloud (GCP cli installed) on your local Mac or Ubuntu Machine

### 6. kubectl installed on your local Mac or Ubuntu Machine

### 6. helm installed on your local Mac or Ubuntu Machine
####     Confirm by:
           helm version         

#

#


## COST
#
### As of September 2022, a standard Kubernetes Cluster with 2 N2 Instances will cost $0.72/Hour (72 Cents/Hour)
#

#


##  Steps:
#

### 7. Create vpc, subnet and k8s cluster
         You will ony need to create a vpc abd subnet if you don't already have a default VPC and at least 1 subnet in it
         e.g. gcloud container clusters create foobar-cluster --region us-central1  --project foobar-project
         Make a note of the name of the cluster and the region it is in. You will need that shortly.
         e.g. 
           foobar-cluster
           us-central1
         * If you already have a Kubernetes Cluster , you can skip this step.
      

### 8. kubectl config current-context
         You will see that you are NOT connected to your newest cluster you just created

### 9. Make the kuberneetes cluster your current context:
         gcloud container clusters get-credentials name_of_kubernetes_cluster  --region region_where_kubernetes_cluster_is_in --project foobar-project


### 10. Before you can deploy Istio to a cluster, list all available contexts:
         kubectl config get-contexts
         example:
         mac1238$ kubectl config get-contexts
                  CURRENT   NAME             CLUSTER          AUTHINFO                                           NAMESPACE
                  *         foobar-cluster   foobar-cluster   foobar-cluster-admin   

### 11. Confirm that now you ARE connected to your kubernetes cluster:
         kubectl config current-context


### 12. Clone the repo https://github.com/DickChesterwood/istio-fleetman
###       This is Dick Chesterwood's repo. This will be the "app" that we will deploy on our cluster
###         So that , when we have Istio, we can see some traffic.
###         Alternatively, you can choose another application of your choice.
            git clone https://github.com/DickChesterwood/istio-fleetman



### 13. Make sure clone worked.  You shoud see the files.
          cd istio-fleetman
          ls -l
####    Confirm by seeing 4 files:
          1-istio-init.yaml
          2-istio-minikube.yaml 
          3-kiali-secret.yaml
          4-application-full-stack.yaml
#

#


### 14. You have cloned  Dick Chesterwood's repo. There are 4 yaml files. "run" the first yaml file and validate.
          kubectl apply  -f ./1-istio-init.yaml
####    Confirm by running:
####      (istio-system namespace should exist)
          kubectl get ns
#

#

### 15. Create resources using 2-istio-minikube.yaml file
          kubectl apply -f ./2-istio-minikube.yaml
####    Confirm by:
          kubectl get svc -n istio-system
          kubectl get cm -n istio-system
          kubectl get secrets -n istio-system
          kubectl get pods -n istio-system
          kubectl get rs -n istio-system
          kubectl get deploy -n istio-system

### 16. Install istio using helm chart
####          This is directly from Istio web site:
####          https://istio.io/latest/docs/setup/install/helm/   
          Configure the Helm repository:
            $ helm repo add istio https://istio-release.storage.googleapis.com/charts
            $ helm repo update
          Create a namespace istio-system for Istio components:
            $ kubectl create namespace istio-system
          Install the Istio discovery chart which deploys the istiod service:
            $ helm install istiod istio/istiod -n istio-system --wait
####    Confirm by:
          Status of the installation can be verified using Helm:
          $ helm status istiod -n istio-system


### 17. Deploy 3-kiali-secret.yaml and verify.
          kubectl apply -f ./3-kiali-secret.yaml
          #validate: kiali secret should exist
          kubectl get secrets -n istio-system | grep kiali
#

#

### 18. Deploy Fleetman application (Dick Chesterwood Method) 
          kubectl apply -f 4-application-full-stack.yaml
####    Confirm by: 
          #fleetman services should exist:
          kubectl get svc -n istio-system | grep fleetman
#

#

### 19. Once you have deployed Kiali pod, get the Kiali Pod Name:
           kubectl get pods -A | grep kiali | awk '{print $2}'
#

#


### 20. Once you have deployed kiali pod, find out which port is exposed? (Should be 20001)
          kubectl describe pod pod_name_gotten_above  -n istio-system | grep -i port
#

#


### 21. Kiali pod is exposing port 20001 which is the GUI. Port forward to it.
         kubectl port-forward -n istio-system name_of_kiali_pod_gotten_above 20001:20001 &
#

#


### 22.  Now on your can go to localhost:20001 to access the GUI.

#

#






     


### 30. Destroy the Kubernetes cluster so that you stop incurring cost of running a small cluster.
          gcloud container clusters delete kubernetes_cluster_name --zone zone_where_the_cluster_is --project project_name_where_the_cluster_is


