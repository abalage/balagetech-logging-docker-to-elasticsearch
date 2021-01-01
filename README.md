# balagetech-logging-docker-to-elasticsearch
Complete configuration for [syslog-ng](https://github.com/syslog-ng/syslog-ng) to parse and ship Docker / Podman logs into Elasticsearch.

Effort has been made to make it as much ECS compatible as possible.

Further information could be found in the website referred in repo details.

###Contents:
```
├── LICENSE
├── README.md
├── deploy-podman-nginx.sh                          <- example Podman script for logging settings
├── docker-compose.yml                              <- example Docker Compose file for logging settings
├── elastic
│   └── elastic-ecs-mapping-for-docker.txt          <- Elasticsearch ECS compatible index template and mapping
└── etc
    └── syslog-ng
        └── conf.d
            ├── enrich-geoip.conf                   <- please note the comment below about GeoIP parsing
            ├── enrich-nginx.conf                   <- parser for NGINX logs
            ├── logs-containers.conf                <- container specific log processing, parsing
            └── logs.conf                           <- main entrypoint

```

## GeoIP parsing ##
GeoIP parsing has been generalized recently to be better reusable in other configs.
The file [enrich-geoip.conf](abalage/balagetech-openwrt-syslog-ng-elasticsearch/blob/master/syslog-ng/etc/syslog-ng/conf.d/enrich-geoip.conf) referenced here is maintained in another repository.
Please make sure you use that repo for up to date version.
