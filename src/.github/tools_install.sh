#!/bin/sh
sudo echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update
sudo apt-get install google-cloud-sdk -y
brew install --build-from-source yq jq
mkdir ~/.kube
# For Logstash, Filebeat
helm repo add elastic https://helm.elastic.co
# For Prometheus
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# For Grafana
helm repo add grafana https://grafana.github.io/helm-charts
# For Jaeger
helm repo add jaegertracing https://jaegertracing.github.io/helm-charts
helm repo update
