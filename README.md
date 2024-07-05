# bls-base-helm-chart

Reusable Helm charts for different application deployment patterns at Bikeleasing

Overview
This repository contains reusable Helm charts tailored for deploying various applications at Bikeleasing. These charts are designed to accommodate different deployment patterns, ensuring a streamlined and efficient deployment process.

## Installing the Chart
To configure the Helm repository, run the following commands:

sh
Copy code
helm repo add mycharts https://bikeleasing-service.github.io/bls-base-helm-chart
helm repo update

# Installation Example
To install a chart with the release name my-app in the shared namespace with custom configurations specified in a values.yaml file, use the following command:

sh
Copy code
helm install bls-app mychart/bls-chart  -n shared --debug -f values.yaml

For a dry-run installation with debug information, use:

sh
Copy code
helm install bls-app mychart/bls-chart  -n shared --debug -f values.yaml --dry-run

# Uninstallation Example
To uninstall a chart, use the following command:
sh
Copy code
helm delete <name-of-the-chart> -n <namespace>
Replace <name-of-the-chart> with the actual name of your release and <namespace> with the namespace where the chart was deployed.
