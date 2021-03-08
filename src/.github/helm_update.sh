#!/bin/sh
case $1 in
    jaeger)
        helm upgrade jaeger --install --version 0.42.0 jaegertracing/jaeger -f chart/values.yaml
    ;;
    grafana)
        helm upgrade grafana --install --version 6.4.5 grafana/grafana -f chart/values.yaml
    ;;
    loki)
        helm upgrade loki --install --version 2.3.0 grafana/loki-stack -f chart/values.yaml
    ;;
    prometheus)
        helm upgrade prometheus --install --version 13.4.0 prometheus-community/prometheus -f chart/values.yaml
    ;;
    elasticsearch)
        helm upgrade elasticsearch --install --version 7.11.1 elastic/elasticsearch -f chart/values.yaml
    ;;
    *)
        printf "Project %s not supported for deployment" $1
    ;;
esac
