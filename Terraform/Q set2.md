## What is terraform
Terraform is an open-source infrastructure as code (IAC) tool developed by HashiCorp. It is used for provisioning and managing infrastructure resources in a declarative and automated way. Terraform allows you to define your infrastructure and services using a domain-specific language (DSL) called HashiCorp Configuration Language (HCL) or JSON. With Terraform, you can describe the desired state of your infrastructure, and it will automatically create, update, or delete resources to match that desired state.

## Diff between Terraform , Pulimi and aws clod-formation

## what is terraform resorces and how to use it

## How to manage access-key and password in terraform

## Why terraform used for devops

## What is terraform init

## what is terraform modules

## what is terraform backend 

## what is terraform remote backend 

## How do you handle secret i Terraform

## What is resource graph i Terraform

## What is state Loacking in terraform

## How to handle dependency between resources in terraform

## What is Tainted terraform resources

## What is terraform state rollback

## Do you think Terraform is platform egnostic

## I lost my state.tf file and i am going to apply then what will happen

## Diff between Terraform and ansible

## What is child and parent module and who callled other

## What is function in terraform

## What is Dynamic data fetching in Terraform

## What is data source in Terraform

## How to export data from one module to another

## What is external data block in Terraform

## What is tf_log variable in terraform

## what comand to reconsile the actual state and desired state

## Diff between "terraform refresh"  and "terraform apply refresh only" 

## what is terraform file in data source in terraform

## I want nginx and my-sql install on server and how templete file help you to achive this

## Key feature of terraform

Key features and concepts of Terraform include:

Declarative Configuration: You define your infrastructure's desired state in configuration files, specifying the resources you need and their properties. Terraform takes care of figuring out how to make the actual infrastructure match this desired state.

Provider-Based: Terraform supports a wide range of cloud providers (e.g., AWS, Azure, Google Cloud), as well as various other infrastructure platforms (e.g., Docker, Kubernetes, on-premises servers). Each provider has its own set of resources and configurations that you can manage.

Resource Management: Terraform allows you to create, update, and delete infrastructure resources such as virtual machines, networks, storage, databases, and more. Resources are defined in Terraform configuration files.

Dependency Management: You can define dependencies between resources to ensure they are created or destroyed in the correct order.

State Management: Terraform maintains a state file that keeps track of the current state of your infrastructure. This state file is used to plan and apply changes, and it helps Terraform understand what needs to be updated or recreated.

Plan and Apply: Terraform follows a two-step process. First, you run terraform plan to preview the changes that will be applied to your infrastructure. Then, you execute terraform apply to make those changes. This ensures you can review and approve changes before they are applied.

Modularity and Reusability: Terraform configurations can be organized into modules, allowing you to reuse and share infrastructure code. This promotes modularity and makes it easier to manage complex infrastructures.

Version Control: Terraform configurations are typically stored in version control systems (e.g., Git) to track changes, collaborate with others, and maintain an audit trail.

## Define IAC 

## What is "terraform D"

## Explain recent project you have work on






