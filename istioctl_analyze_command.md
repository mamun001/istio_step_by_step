# istioctl analyze commads detects issues with you istio configuration
#

#

##  Example:
      istioctl analyze
  
        Warning [IST0150] (Service default/prod-foo-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
        Warning [IST0150] (Service default/prod-foo-es-gke) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
        Warning [IST0150] (Service default/prod-foo-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
        Warning [IST0150] (Service default/prod-foo-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
        Warning [IST0150] (Service default/prod-foo-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
        Info [IST0118] (Service default/dashboard-delivery) Port name  (port: 8085, targetPort: 8085) doesn't follow the naming convention of Istio port.
        Info [IST0118] (Service default/foobar-logstash-foobar) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
        Info [IST0118] (Service default/foobar-postgresql-headless) Port name postgresql (port: 5432, targetPort: postgresql) doesn't follow the naming convention of Istio port.
        Info [IST0118] (Service default/foobar-postgresql) Port name postgresql (port: 5432, targetPort: postgresql) doesn't follow the naming convention of Istio port.

#

#

