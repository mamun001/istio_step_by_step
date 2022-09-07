mac1238$ istioctl analyze
Warning [IST0150] (Service default/prod-contacts-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
Warning [IST0150] (Service default/prod-reporting-es-gke) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
Warning [IST0150] (Service default/prod-reporting-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
Warning [IST0150] (Service default/prod-shrty-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
Warning [IST0150] (Service default/prod-txt-es) Port name for ExternalName service is invalid. Proxy may prevent tcp named ports and unmatched traffic for ports serving TCP protocol from being forwarded correctly
Info [IST0118] (Service default/dashboard-delivery) Port name  (port: 8085, targetPort: 8085) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-account-classifications-memcached) Port name memcache (port: 11211, targetPort: memcache) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-account-classifications) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-badwords) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-message-samples-memcached) Port name memcache (port: 11211, targetPort: memcache) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-message-samples) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-mms-images) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-realtime-dlrs-memcached) Port name memcache (port: 11211, targetPort: memcache) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-realtime-dlrs) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-report-inbound-texts-memcached) Port name memcache (port: 11211, targetPort: memcache) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-report-inbound-texts) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-logstash-sift) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-postgresql-headless) Port name postgresql (port: 5432, targetPort: postgresql) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-postgresql) Port name postgresql (port: 5432, targetPort: postgresql) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/heimdall-rep-kibana) Port name  (port: 80, targetPort: 5601) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/hub) Port name  (port: 8081, targetPort: 8081) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/ping-logstash-events) Port name beats (port: 5044, targetPort: beats) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/proxy-api) Port name  (port: 8001, targetPort: 8001) doesn't follow the naming convention of Istio port.
Info [IST0118] (Service default/something) Port name  (port: 2000, targetPort: 2000) doesn't follow the naming convention of Istio port.
Info [IST0131] (VirtualService default/mms-image-classifier-ingress) VirtualService rule #0 match #2 is not used (duplicate/overlapping match in rule #0).
Info [IST0131] (VirtualService default/mms-image-classifier-ingress) VirtualService rule #1 match #2 is not used (duplicate/overlapping match in rule #1).
Info [IST0131] (VirtualService default/mms-image-classifier-mesh) VirtualService rule #0 match #2 is not used (duplicate/overlapping match in rule #0).
Info [IST0131] (VirtualService default/mms-image-classifier-mesh) VirtualService rule #1 match #2 is not used (duplicate/overlapping match in rule #1).
