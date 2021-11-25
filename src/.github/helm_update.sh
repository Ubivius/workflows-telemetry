#!/bin/sh
case $1 in
    jaeger)
        helm upgrade jaeger-tracing --install --version 0.42.0 jaegertracing/jaeger -f chart/values.yaml
    ;;
    grafana)
        helm upgrade grafana --install --version 6.4.5 grafana/grafana -f chart/values.yaml
        kubectl apply -f chart/ingressroute.yaml
    ;;
    logstash)
        helm upgrade logstash --install --version 7.14.0 elastic/logstash -f chart/values.yaml
    ;;
    prometheus)
        helm upgrade prometheus --install --version 13.4.0 prometheus-community/prometheus -f chart/values.yaml
    ;;
    filebeat)
        helm upgrade filebeat --install --version 7.14.0 elastic/filebeat -f chart/values.yaml
    ;;
    *)
        printf "Project %s not supported for deployment" $1
    ;;
esac
