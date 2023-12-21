##  What is the difference between scalability and elasticity in cloud computing?
Answer:
Scalability: It refers to the system's capability to handle an increasing amount of workload by adding resources like CPU, memory, or storage.
Elasticity: It is the ability to automatically provision and release resources based on demand. Elasticity involves scaling both out (adding resources) and in (releasing resources) dynamically.

## Explain the CAP theorem and its relevance in distributed systems.
Answer:
CAP Theorem: It states that in a distributed data store, it's impossible to simultaneously guarantee consistency (C), availability (A), and partition tolerance (P). You can only prioritize two out of the three aspects at any given time.
Relevance: In practical scenarios, systems need to manage trade-offs between consistency, availability, and partition tolerance. For instance, in distributed systems, when a network partition occurs, one must choose between consistency and availability.

## Describe serverless computing and its advantages.
Answer:
Serverless Computing: It's a cloud computing model where the cloud provider manages infrastructure dynamically, allocating resources as needed, and charges based on actual usage rather than pre-purchased capacity.

## How does container orchestration differ from containerization?
Answer:
Containerization: It involves encapsulating an application and its dependencies into a container (e.g., Docker) for efficient and consistent deployment across various environments.
Container Orchestration: This refers to the automated management, deployment, scaling, and networking of containers in a clustered environment. Tools like Kubernetes handle container orchestration by managing container lifecycle, load balancing, and more.

5. What are the key security considerations in cloud computing?
Answer:
Data Security: Ensuring encryption, access control, and data integrity.
Identity and Access Management (IAM): Managing user identities, roles, and permissions.
Compliance: Adhering to industry-specific regulations and compliance standards.
Network Security: Implementing firewalls, VPNs, and secure network configurations.
Incident Response and Monitoring: Detecting threats and promptly responding to security incidents.

6. Explain the difference between IaaS, PaaS, and SaaS.
Answer:
IaaS (Infrastructure as a Service): Provides virtualized computing resources over the internet. Users can rent servers, storage, and networking components.
PaaS (Platform as a Service): Offers a platform allowing customers to develop, run, and manage applications without dealing with the underlying infrastructure.
SaaS (Software as a Service): Delivers software applications over the internet on a subscription basis, eliminating the need for installation and maintenance.
