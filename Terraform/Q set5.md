## 1) How can you implement Infrastructure as code with Terraform in a CI/CD Pipeline

## 2) Difference between count and for-each

## 3) How do you implement a multi cloud infrastructure with Terraform

## 4) what is Terraform drift 

## 5) How to secure sensitive data in Terraform

## Q) What happens if your state file gets corrupted during a multi-cloud deployment?
Ans: Terraform can’t reconcile resources across AWS, Azure, and GCP. Each provider shows different resource states, and you’re stuck with infrastructure that exists in some clouds but not in Terraform’s memory.

## Q) What happens when your Terraform Cloud workspace runs out of credits mid-apply?
Ans: Your deployment stops immediately, leaving resources in various states of creation. Some EC2 instances are running, some security groups are half-configured, and your application is completely broken.

## Q)What happens if your team uses AI-generated Terraform code that creates naming conflicts?
Ans: ChatGPT creates resource names that seem fine in isolation but clash with existing infrastructure. Your apply fails with cryptic AWS errors about duplicate names, and you’re debugging AI code at 2 AM.

## Q)What happens when Kubernetes updates break your Terraform provider compatibility?
Ans: Your cluster updates to K8s 1.30, but your Terraform Kubernetes provider only supports up to 1.28. All your deployments start failing with “resource mapping not found” errors.

## Q) What happens if your GitOps pipeline applies malicious Terraform changes from a compromised PR?
Ans: An attacker submits seemingly innocent changes that actually create backdoor access or expensive resources. Your automated pipeline applies them before security review, compromising your entire infrastructure.

## Q)What happens when your Terraform state grows to 100MB+ with microservices architecture?
Ans: Every plan and apply takes 15+ minutes. Your CI/CD pipeline times out, developers wait forever for infrastructure changes, and productivity crashes.

## Q) What happens if cloud provider regions go down during your Terraform deployment?
Ans: You’re deploying across multiple regions when us-east-1 has an outage. Half your resources are created, half aren’t, and Terraform can’t complete the apply because APIs are unreachable.

## Q) What happens when your organization hits cloud spending limits during a large deployment?
Ans: You’re provisioning 200 EC2 instances when AWS cuts off your account for exceeding budget alerts. Some instances are running, billing is frozen, and you can’t create or destroy anything.

## Q) What happens if your remote state backend gets accidentally deleted by cloud retention policies?
Ans: Your S3 bucket had a 30-day lifecycle policy that someone forgot about. Three months later, your entire Terraform state is gone, and you have no record of what infrastructure exists.

## Q) What happens when Terraform provider rate limits conflict with your CI/CD frequency?
Ans: Your team pushes 50+ changes per day, but the AWS provider can only handle 20 API calls per minute. Deployments start queuing up, failing randomly, and creating inconsistent infrastructure states.


