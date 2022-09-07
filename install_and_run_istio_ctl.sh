
curl -sL https://istio.io/downloadIstioctl | sh -
  784  export PATH=$PATH:$HOME/.istioctl/bin
  785  istioctl proxy-status
  792  history | grep istio
mac1238$ istioctl proxy-status
NAME                                        CLUSTER     CDS        LDS        EDS        RDS                            ISTIOD                                 VERSION
prometheus-8d4666f69-5qtrc.istio-system                 SYNCED     SYNCED     SYNCED     STALE (Never Acknowledged)     istiod-istio-1611-575fbf664b-qd7q2     1.6.14-gke.0
mac1238$ 

