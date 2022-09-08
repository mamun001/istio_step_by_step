
#   Install istioctl and get status of your mesh
#

#

## Install istioctl
    curl -sL https://istio.io/downloadIstioctl | sh -
    export PATH=$PATH:$HOME/.istioctl/bin
#

#

##  get an overview of your mesh
      istioctl proxy-status
        example output:
         NAME                                     CLUSTER   CDS      LDS      EDS                        RDS  ISTIOD                             VERSION
         prometheus-8d4666f69-5qtrc.istio-system  SYNCED    SYNCED   SYNCED   STALE (Never Acknowledged)      istiod-istio-1611-575fbf664b-qd7q2 1.6.14-gke.0

