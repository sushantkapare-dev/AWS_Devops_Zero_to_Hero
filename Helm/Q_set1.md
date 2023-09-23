## what is Helm and which helm version you used?
Helm is a package manager for Kubernetes, which is an open-source container orchestration platform. Helm simplifies the deployment and management of applications on Kubernetes by providing a templating system for defining, installing, and upgrading even complex Kubernetes applications. Helm uses charts, which are packages of pre-configured Kubernetes resources, to manage these applications.

1. **No Tiller**: In Helm 2, there was a component called Tiller that needed to be installed in the Kubernetes cluster. Helm 3 removed this requirement, which improved security and made Helm easier to use in different cluster environments.

2. **Chart Dependencies**: Helm 3 introduced a new way of managing chart dependencies, making it more aligned with how other package managers work. It uses a `Chart.yaml` file to define dependencies.

3. **Role-Based Access Control (RBAC)**: Helm 3 supports RBAC out of the box, which makes it more secure and compliant with Kubernetes cluster configurations.

4. **JSON Schema Validation**: Helm 3 introduced JSON schema validation for `values.yaml` files, providing better validation of chart values.

## what is helm chart?

## How helmchart help us to manage k8s cluster?

## How to install helm-chart?

## what is helm chart architure?
![image](https://github.com/SushantOps/AWS_Devops_Questions_and_Answers/assets/109059766/ddf801f1-a2fd-4245-8ab5-dba287c2ffb3)

