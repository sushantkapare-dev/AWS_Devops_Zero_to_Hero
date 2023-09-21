1. **helm install**: This command is used to install a new Kubernetes application from a Helm chart.

   Real-world use case: Deploying a new version of your application to a Kubernetes cluster. For example:
   ```bash
   helm install my-app ./my-app-chart
   ```

2. **helm upgrade**: This command is used to upgrade an existing release to a new version or with new configuration.

   Real-world use case: Updating your application to a new version with bug fixes or adding new features. For example:
   ```bash
   helm upgrade my-app ./my-updated-chart
   ```

3. **helm rollback**: This command is used to roll back to a previous release of an application.

   Real-world use case: Reverting to a stable version of the application in case the latest upgrade introduces critical issues. For example:
   ```bash
   helm rollback my-app 1
   ```

4. **helm list**: This command lists all the releases of Helm charts currently installed in the cluster.

   Real-world use case: Checking the status of all deployed applications. For example:
   ```bash
   helm list
   ```

5. **helm delete**: This command is used to uninstall and delete a release.

   Real-world use case: Removing an application from the cluster when it is no longer needed. For example:
   ```bash
   helm delete my-app
   ```

6. **helm search**: This command allows you to search for Helm charts in a chart repository.

   Real-world use case: Finding Helm charts for popular applications in public repositories or custom charts in your organization's repository. For example:
   ```bash
   helm search repo stable/mysql
   ```

7. **helm package**: This command packages a Helm chart into a versioned archive file.

   Real-world use case: Preparing a Helm chart for distribution or sharing with others. For example:
   ```bash
   helm package ./my-chart
   ```

8. **helm repo add/helm repo update**: These commands are used to add and update Helm chart repositories, respectively.

   Real-world use case: Managing external chart repositories to discover and access charts. For example:
   ```bash
   helm repo add stable https://charts.helm.sh/stable
   helm repo update
   ```

9. **helm template**: This command generates Kubernetes manifest files from a Helm chart without installing it.

   Real-world use case: Previewing the Kubernetes resources that will be created by a Helm chart before actually deploying it. For example:
   ```bash
   helm template my-app ./my-chart
   ```
## Some other commands:-

```
helm list -a
```

