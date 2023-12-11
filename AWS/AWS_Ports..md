### AWS Ports:
1. **Amazon RDS:**
   - MySQL: 3306
   - PostgreSQL: 5432
   - Oracle: 1521
   - SQL Server: 1433

2. **Amazon EC2:**
   - SSH (Secure Shell): 22
   - RDP (Remote Desktop Protocol): 3389

3. **Amazon S3:**
   - HTTP: 80
   - HTTPS: 443

4. **Amazon Elastic Load Balancer (ELB):**
   - Classic Load Balancer: 80, 443
   - Application Load Balancer: 80, 443

5. **Amazon VPC (Virtual Private Cloud):**
   - Site-to-Site VPN: 500 (UDP)
   - Direct Connect: 123 (UDP)

6. **Amazon CloudFront:**
   - HTTP: 80
   - HTTPS: 443

7. **Amazon DynamoDB:**
   - HTTP: 80
   - HTTPS: 443

8. **Amazon Lambda:**
   - HTTPS: 443

9. **Amazon Elastic Container Service (ECS):**
   - ECS Agent: 51678

10. **AWS Elastic Beanstalk:**
    - HTTP: 80
    - HTTPS: 443

### DevOps Ports:
1. **Git:**
   - SSH: 22
   - HTTP: 80
   - HTTPS: 443

2. **Jenkins:**
   - HTTP: 8080
   - HTTPS: 8443

3. **Docker:**
   - Docker Daemon: 2375 (unsecured), 2376 (secured)
   - Docker Registry: 5000

4. **Kubernetes:**
   - API Server: 6443
   - Kubelet: 10250

5. **Ansible:**
   - SSH: 22

6. **Terraform:**
   - No specific ports, but uses HTTP (80) and HTTPS (443) for remote state backends and providers.

7. **Chef:**
   - Chef Server API: 443

8. **Puppet:**
   - Puppet Master: 8140

9. **Prometheus:**
   - Web UI: 9090

10. **Grafana:**
    - Web UI: 3000
