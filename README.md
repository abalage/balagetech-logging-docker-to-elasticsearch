# balagetech-logging-docker-to-elasticsearch
Configurations for syslog-ng and Docker to log into Elasticsearch

* This repo contains a complete configuration for syslog-ng to logging Docker containers into Elasticsearch
* Importable Visualizations, Dashboard and a connecting Index pattern to be used with Kibana
* A text file describing an explicit mapping for some attributes of the logs.

Further information could be found in the website referred in repo details.

###Contents:
```
/
├── docker-compose.yml                                       <- example Compose file, it is not complete
├── elastic
│   ├── elastic-mapping-for-nginx-and-geoip.txt              <- Index mapping for NGINX and GeoIP metadata for Elasticsearch
│   └── exported-visualizations-dashboard-index-pattern.json <- Importable Visualizations, Dashboard and Index patterns for Kibana
├── etc
│   └── syslog-ng
│       └── conf.d
│           └── docker-journal-elastic.conf                  <- complete config for syslog-ng
├── LICENSE
└── README.md
```
