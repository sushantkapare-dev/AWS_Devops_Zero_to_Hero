
# Terraform Interview Questions

## What do you know about terraform?
Ans: Terraform is a DevOps application that helps us create infrastructure and cloud data centres while keeping track of what was created and where. It is a tool that helps us build infrastructure safely and efficiently. Terraform can manage both popular service providers and custom in-house solutions.
 
## What steps comprise Terraform's core workflow?
Ans: Terraform's core workflow consists of three steps:
The first step is to write, which includes developing infrastructure in code (code framework).
The second step is to plan ahead to see how the changes will look before implementing them. 
Finally, the third step is to apply, which is concerned with developing a repeatable infrastructure.    


## Discuss some critical features of Terraform.
Ans: Terraform assists us in dealing with our frameworks as code and developing them when required. The key features are:
A control centre that permits clients to notice capacities.
The capacity to interpret HCL code into JSON design.
A setup language that upholds the introduction.
A module count that monitors the number of modules applied to the frameworks.
 
## What exactly is IAC?
Ans: This is one of the most basic and frequently asked terraform interview questions.IAC (Infrastructure as Code) enables you to build, change, and manage your infrastructure using code rather than manual processes. The configuration files are created based on the specifications of your infrastructure, and these configurations can be edited and distributed securely within an organisation.
 
## When can we use the terraform init command?
Ans: We can use the terraform init command for the following cases:
Plugin Installation
Backend Initialization
Child Module Installation
 
## What exactly is Terraform D, and how does it function?
Ans: Terraform D is a Windows plugin compatible with nearly all in-service systems. The terraform init looks for plugins in the following directory by default.
 
## Can I add policies to Terraform Enterprise's open-source or pro versions?
Ans: Policies cannot be added to Terraform Enterprise's open-source description. The same is true for the Enterprise Pro edition. Terraform Enterprise's best version could only contact the watch policies.
 
## What are Modules in Terraform?
Ans: A module in Terraform is a container for multiple resources used concurrently. Every Terraform that includes resources mentioned in .tf files requires the root module.
 
## Is it possible to use Terraform with callbacks on Azure? Sending a callback to, say, a logging system, a trigger, or other events?
Ans: Yes. This can be accomplished using Azure Event Hubs. This feature is now available in the Terraform AzureRM provider. Terraform's Azure supplier offers users straightforward functionality. Microsoft Azure Cloud Shell includes a pre-configured Terraform occurrence.
 
## What exactly do you mean by Terraform providers?
Ans: Providers are Terraform plugins that allow it to interact with cloud providers, SaaS providers, and other APIs. The terraform configurations must declare which providers they require for Terraform to install and use. Some Terraform providers require configuration before use, such as endpoint URLs or cloud regions.
 
Is it possible to deploy Terraform with multiple providers?
Ans: Yes, Terraform supports multi-provider deployments, including on-premises deployments such as Openstack and VMware and SDN management.
 
What is the function of the Terraform provider?
Ans: The function of the terraform provider is as follows:
Terraform providers extend Terraform's ability to manage resource types and data sources.
Terraform service providers set up a specific infrastructure platform (either cloud or self-hosted).
A provider implements every resource type; Terraform cannot manage any infrastructure without providers.
Local utilities, for instance generating random numbers for unique resource names, can also be provided by Terraform providers.
 
What exactly is a Terraform cloud?
Ans: The Terraform cloud is a platform that enables teams to collaborate on Terraform projects on-demand or in response to specific circumstances. It is inextricably linked to Terraform's processes and data. A private registry hosts Terraform modules.
 
Describe in detail Oracle Cloud Infrastructure.
Ans: Oracle Cloud is a cloud computing service that provides storage, servers, applications, services, and networks via a global network of managed data centers managed by Oracle Corporation. These services are available at all times via the Internet.
 
What exactly is a "terraform backend"?
Ans: Any Terraform setup can include a backend, which defines two key things:
Where are surgeries performed?
Where has the state been saved? (Terraform keeps track of all resources in a state file.)
 
Name all of Terraform's version controls.
Ans: The following version controls are supported:
Azure DevOps Services and Server
Bitbucket Cloud and Server
Gitlab EE and CE 
Gitlab.com
GitHub Business
www.GitHub.com (OAuth)
 
How can you inject dependencies from modules other than .tfvars files or CLI arguments?
Ans: The default Terraform method would be to use remote-state to lookup the outputs of other modules. In the community, it is also common to use terragrunt, a tool for explicitly injecting variables between modules.
 
Explain the concept of a null resource in the context of Terraform.
Ans: The null resource allows you to create provisioners that aren't directly linked to any existing resource. Because a null resource behaves the same as any other resource, you can configure provisioners, connection details, and other meta-parameters the same way. This gives you more control over when provisioners in the dependency graph execute.
 
Can you give some examples of how Sentinel policies can be used?
Ans: Sentinels are a great way to use Terraform to apply various rules. A few examples are provided below:
Limit the cloud provider's capabilities.
Examine the audit trail of Terraform Cloud operations.
You can restrict how modules are used in the Private Module Registry.
Make clear ownership of resources a requirement.
Only specific resources, services, or data sources are forbidden.
Make resource labeling a requirement.
 
How do I write down a variable that changes due to an external source or during “Terraform apply”?
Ans: You use it as follows: variable "my_var" { }
 
Which command can be used to see a preview of the Terraform execution plan?
Ans: Terraform plan command will generate the execution plan for the infrastructure changes Terraform will make.
 
In the Terraform cloud, which command is used to create new workspaces?
Ans: To create a new workspace, use the terraform workspace new <workspace-name> command.
 
Which command is used to validate the syntax of Terraform configuration files?
Ans: Terraform validate is used to check whether a configuration is syntactically correct and internally consistent.
 
Which command can be used to match the Terraform state to the actual real-world infrastructure?
Ans: To reconcile Terraform state with actual real-world infrastructure, use the terraform apply -refresh-only command. It is the new replacement for the terraform refresh command, which is now deprecated.
 
Highlight some come differences between Terraform and Ansible.   
How Does Terraform Store Sensitive Data?
Ans: Terraform requires credentials to communicate with your cloud provider's API. These credentials, however, are frequently saved in plaintext on your desktop. GitHub is exposed to thousands of API and cryptographic keys every day. As a result, never store your API keys directly in Terraform code. Use encrypted storage to store passwords, TLS certificates, SSH keys, and anything else that shouldn't be stored in plain text.
 
How would you recover from a failed Terraform application?
Ans: You can keep your configuration in version control and commit before each change, and then use the features of the version control system to revert to an earlier configuration if necessary. You must always recommit the previous version code in order for it to be the new version in the version control system.
 
How can you avoid duplicating resources in Terraform?
Ans: It can be done in one of three ways, depending on the situation and the need.
The Terraform code will no longer manage the resource if it is destroyed.
By removing API resources.
Importing action will also help with resource depletion.
 
What are some of Terraform Azure Provider's most recent considerations?
Ans: New data resources, such as Azure batch certificate, which aids in certificate administration, are included in recent editions. In networking, this resource is used to control the prefix. The Azure app service has been improved, and bugs have been addressed.
 
If something goes wrong, how will you manage and regulate rollbacks?
Ans: To make the previous code version the new and current one in your VCS, you must recommit it. This would launch the terraform run command, which would run the previous code. Because Terraform is more declarative, you'll make certain that everything in the code returns to its original state. If the state file was corrupted, you would suggest using Terraform Enterprise's State Rollback feature.
Frequently Asked Questions
What are all the command lines that can be asked in Terraform Interview?
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

What is the "Random" provider? What is its function?
The random provider assists in the generation of numeric or alphabetic characters that can be used as a prefix or suffix for the desired named identifier.

What are the ten most used terraform commands?
terraform init
terraform init -upgrade
terraform plan
terraform apply
terraform apply –auto-approve
terraform destroy
terraform destroy –auto-approve
terraform fmt
terraform fmt –recursive
terraform show
