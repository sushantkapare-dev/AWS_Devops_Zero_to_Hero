## 1. You need to gracefully terminate pods to avoid disrupting ongoing processes during a deployment. How would you configure Kubernetes to ensure graceful pod termination? What role do preStop hooks and termination grace periods play in this process?

## 2. Your team has implemented a custom resource definition (CRD), but it isn’t behaving as expected. How would you debug and resolve issues with a CRD?
What tools (e.g., kubectl describe, logs, webhook configurations) can help you identify the problem?

## 3. The Kubernetes API server becomes unresponsive in your cluster. How would you diagnose and restore API server functionality?
What precautions can you take to minimize the impact of API server downtime?

## 4. Dealing with Node Affinity and Anti-Affinity Conflicts You’ve configured node affinity and anti-affinity rules for a workload, but pods are not being scheduled as expected. How would you troubleshoot these scheduling issues? What are best practices for using affinity and anti-affinity to manage workload placement?

## 5. Application pods in your cluster are generating large log files, causing storage issues. How would you manage log rotation and retention for pods?
What Kubernetes features or external tools can assist in log management?

## 6. Your team is migrating to Helm for application deployment, but some charts require custom values.How would you manage and deploy custom values for Helm charts? What strategies can you use to handle versioning and rollbacks for Helm releases? 

## 7. A StatefulSet for your database application is failing to create pods. How would you debug why the StatefulSet is failing? What are the specific considerations for storage and network configurations in StatefulSets?

## 8. Your cluster uses a mix of third-party and custom container images. How would you ensure that only secure and compliant images are used in the cluster? What tools (e.g., image scanners, policies) can assist with this process?
