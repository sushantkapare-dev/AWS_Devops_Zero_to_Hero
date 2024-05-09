# K8s Challenges in Production

 ## 1.Resource sharing:- 
 (Namespace, leaking memory , blast radius)
 
 One significant challenge in Kubernetes production environments is efficient resource sharing among multiple applications or tenants within a cluster. Without proper resource allocation and isolation, one application's resource usage can negatively impact others, leading to performance degradation or even outages. The solution lies in implementing robust resource management practices such as resource quotas and limits, Quality of Service (QoS) classes, and pod priority and preemption. Resource quotas enforce limits on resource usage per namespace, preventing individual applications from consuming excessive resources. Quality of Service classes help prioritize resource allocation based on application requirements, ensuring critical workloads receive the necessary resources. Pod priority and preemption mechanisms prioritize critical pods and evict lower priority ones when resources become scarce, maintaining cluster stability and performance. Additionally, utilizing resource-aware scheduling and auto-scaling mechanisms can dynamically adjust resource allocation based on workload demand, optimizing resource utilization and enhancing overall cluster efficiency. Regular monitoring and tuning of resource allocation policies are essential for maintaining optimal performance and preventing resource contention issues in Kubernetes production environments.

## OOM Killed Issue with Pord
