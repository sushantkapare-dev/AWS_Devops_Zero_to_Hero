## What do you know about terraform?
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It is designed to help automate the provisioning and management of infrastructure resources such as virtual machines, networks, storage, databases, and more, in a declarative and version-controlled manner. Terraform is widely used by DevOps and infrastructure teams to create, modify, and destroy infrastructure resources across various cloud providers and on-premises environments.
 
## What steps comprise Terraform's core workflow?
Ans: Terraform's core workflow consists of three steps:
The first step is to write, which includes developing infrastructure in code (code framework).
The second step is to plan ahead to see how the changes will look before implementing them. 
Finally, the third step is to apply, which is concerned with developing a repeatable infrastructure.    

## Discuss some critical features of Terraform.
**Declarative Configuration**: Terraform uses a declarative syntax to define infrastructure resources, which means you specify what you want the infrastructure to look like, rather than writing scripts that describe how to achieve that state.

**Multi-Cloud and Multi-Provider Support**: Terraform supports multiple cloud providers, including AWS, Azure, Google Cloud, and many others. It also supports on-premises and other infrastructure providers, allowing you to manage hybrid or multi-cloud environments.

**Dependency Resolution**: Terraform automatically manages resource dependencies, ensuring that resources are created, updated, or destroyed in the correct order to maintain a consistent state.

**State Management**: Terraform maintains a state file that keeps track of the current state of your infrastructure. This state allows Terraform to determine what changes need to be made to reach the desired state and avoid unnecessary modifications.

**Plan and Apply**: Terraform provides a two-step process for making changes to your infrastructure. First, you generate an execution plan to preview changes without actually applying them. Then, you apply the plan to make the desired changes to your infrastructure.

**Modular Configuration**: Terraform allows you to organize your infrastructure code into reusable modules, which can simplify configuration management and promote best practices.

**Terraform Providers**: Providers are plugins that enable Terraform to interact with various infrastructure platforms. Terraform has a rich ecosystem of providers that cover a wide range of cloud, infrastructure, and service providers.

**Input Variables and Outputs**: Terraform supports input variables and output values, making it easy to parameterize your configurations and share information between different parts of your infrastructure code.

**Versioning and Collaboration**: Terraform integrates with version control systems like Git, allowing teams to collaborate on infrastructure code and manage changes over time.

**Terraform Cloud**: Terraform Cloud is a hosted service provided by HashiCorp that offers additional features such as remote state storage, collaboration tools, and a graphical user interface for managing Terraform workspaces.
 
## What exactly is IAC?
IAC stands for Infrastructure as Code. It is a concept and practice in software engineering and IT operations where infrastructure provisioning and management are treated as code. In other words, IAC involves defining, configuring, and managing infrastructure resources and environments using code, just like software applications are developed and maintained.

IAC tools and frameworks, such as Terraform, Ansible, Puppet, Chef, and AWS CloudFormation, facilitate the practice of Infrastructure as Code by providing the necessary abstractions, automation capabilities, and integrations with various infrastructure platforms and services. These tools allow infrastructure teams to manage complex infrastructure at scale, improve collaboration with development teams, and reduce the time and effort required to provision and maintain infrastructure resources.
 
## When can we use the terraform init command?
Ans: We can use the terraform init command for the following cases:
**Plugin Installation**
**Backend Initialization**
**Child Module Installation**
 
## What exactly is Terraform D, and how does it function?
Ans: Terraform D is a Windows plugin compatible with nearly all in-service systems. The terraform init looks for plugins in the following directory by default.
 
## What are Modules in Terraform?
Ans: A module in Terraform is a container for multiple resources used concurrently. Every Terraform that includes resources mentioned in .tf files requires the root module.
 
## What exactly do you mean by Terraform providers?
Ans: Providers are Terraform plugins that allow it to interact with cloud providers, SaaS providers, and other APIs. The terraform configurations must declare which providers they require for Terraform to install and use. Some Terraform providers require configuration before use, such as endpoint URLs or cloud regions.
 
## Is it possible to deploy Terraform with multiple providers?
Ans: Yes, Terraform supports multi-provider deployments, including on-premises deployments such as Openstack and VMware and SDN management.
 
## What is the function of the Terraform provider?
Ans: The function of the terraform provider is as follows:
Terraform providers extend Terraform's ability to manage resource types and data sources.
Terraform service providers set up a specific infrastructure platform (either cloud or self-hosted).
A provider implements every resource type; Terraform cannot manage any infrastructure without providers.
Local utilities, for instance generating random numbers for unique resource names, can also be provided by Terraform providers.
 
## What exactly is a Terraform cloud?
Ans: The Terraform cloud is a platform that enables teams to collaborate on Terraform projects on-demand or in response to specific circumstances. It is inextricably linked to Terraform's processes and data. A private registry hosts Terraform modules.
 
## What exactly is a "terraform backend"?
In Terraform, a backend is a configuration that determines how Terraform stores and retrieves its state files. The state file is a crucial component of Terraform because it keeps track of the current state of your infrastructure, including the resources that Terraform manages and their current configurations.

The backend configuration specifies where and how the state file should be stored. The choice of backend affects how Terraform manages state, concurrency, locking, and collaboration among team members when working with Terraform configurations.

Here are some common backend options in Terraform:

1. Local Backend: The default backend stores the state file on the local filesystem of the machine where Terraform is executed. This is suitable for single-user development or experimentation but is not recommended for collaborative or production use because it lacks features like locking.

```hcl
terraform {
  backend "local" {
    path = "path/to/terraform.tfstate"
  }
}
```

2. Remote Backends: Remote backends store the state file remotely, often in a shared location accessible by multiple users or automation scripts. Some popular remote backend options include:

   - **S3 Backend**: Stores the state file in an Amazon S3 bucket. It's commonly used with AWS and provides locking and versioning.

   - **Azure Blob Storage Backend**: Similar to the S3 backend but stores the state file in Azure Blob Storage.

   - **Google Cloud Storage Backend**: Stores the state file in Google Cloud Storage.

   - **HashiCorp Terraform Cloud Backend**: Terraform Cloud offers a hosted backend solution provided by HashiCorp, which includes features like remote state storage, locking, collaboration, and a web-based user interface.

Here's an example of configuring an S3 backend:

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}
```

3. Consul Backend: Terraform can use HashiCorp Consul as a backend for state storage and locking. Consul is often used in on-premises or self-hosted infrastructure environments.

```hcl
terraform {
  backend "consul" {
    address = "consul.example.com:8500"
    path    = "terraform/my-project"
  }
}
```
 
## How can you inject dependencies from modules other than .tfvars files or CLI arguments?
Ans: The default Terraform method would be to use remote-state to lookup the outputs of other modules. In the community, it is also common to use terragrunt, a tool for explicitly injecting variables between modules.
 
## Explain the concept of a null resource in the context of Terraform.
Ans: The null resource allows you to create provisioners that aren't directly linked to any existing resource. Because a null resource behaves the same as any other resource, you can configure provisioners, connection details, and other meta-parameters the same way. This gives you more control over when provisioners in the dependency graph execute.
 
## Can you give some examples of how Sentinel policies can be used?
Ans: Sentinels are a great way to use Terraform to apply various rules. A few examples are provided below:
Limit the cloud provider's capabilities.
Examine the audit trail of Terraform Cloud operations.
You can restrict how modules are used in the Private Module Registry.
Make clear ownership of resources a requirement.
Only specific resources, services, or data sources are forbidden.
Make resource labeling a requirement.
 
## How do I write down a variable that changes due to an external source or during “Terraform apply”?
Ans: You use it as follows: variable "my_var" { }
 
## Which command can be used to see a preview of the Terraform execution plan?
Ans: Terraform plan command will generate the execution plan for the infrastructure changes Terraform will make.
 
## In the Terraform cloud, which command is used to create new workspaces?
Ans: To create a new workspace, use the terraform workspace new <workspace-name> command.
 
## Which command is used to validate the syntax of Terraform configuration files?
Ans: Terraform validate is used to check whether a configuration is syntactically correct and internally consistent.
 
## Which command can be used to match the Terraform state to the actual real-world infrastructure?
Ans: To reconcile Terraform state with actual real-world infrastructure, use the terraform apply -refresh-only command. It is the new replacement for the terraform refresh command, which is now deprecated.
 
# Highlight some come differences between Terraform and Ansible.  

## How Does Terraform Store Sensitive Data?
Ans: Terraform requires credentials to communicate with your cloud provider's API. These credentials, however, are frequently saved in plaintext on your desktop. GitHub is exposed to thousands of API and cryptographic keys every day. As a result, never store your API keys directly in Terraform code. Use encrypted storage to store passwords, TLS certificates, SSH keys, and anything else that shouldn't be stored in plain text.
 
## How would you recover from a failed Terraform application?
Ans: You can keep your configuration in version control and commit before each change, and then use the features of the version control system to revert to an earlier configuration if necessary. You must always recommit the previous version code in order for it to be the new version in the version control system.
 
## How can you avoid duplicating resources in Terraform?
Ans: It can be done in one of three ways, depending on the situation and the need.
The Terraform code will no longer manage the resource if it is destroyed.
By removing API resources.
Importing action will also help with resource depletion.
 
## If something goes wrong, how will you manage and regulate rollbacks?
Ans: To make the previous code version the new and current one in your VCS, you must recommit it. This would launch the terraform run command, which would run the previous code. Because Terraform is more declarative, you'll make certain that everything in the code returns to its original state. If the state file was corrupted, you would suggest using Terraform Enterprise's State Rollback feature.

## What are all the command lines that can be asked in Terraform Interview?
All the command lines from where terraform interview questions can arise are

Plan, deploy, and cleanup infrastructure.
Terraform Workspaces
Terraform state manipulation
Terraform Input and Outputs
Terraform CLI tricks
Formate and validate terraform codes
Terraform console, graph, taint/untaint, and clouds.
You've used Terraform to deploy a virtual machine and want to send data to it (or execute some commands). Which Terraform concept would you use?
Provisioners as it is used for executing scripts on a local or remote machine as part of resource creation or destruction.

## What is the "Random" provider? What is its function?
The random provider assists in the generation of numeric or alphabetic characters that can be used as a prefix or suffix for the desired named identifier.

## What are the ten most used terraform commands?
**terraform init**

**terraform init -upgrade**

**terraform plan**

**terraform apply**

**terraform apply –auto-approve**

**terraform destroy**

**terraform destroy –auto-approve**

**terraform fmt**

**terraform fmt –recursive**

**terraform show**
