# Install and Uninstall Apps

### Install an app:
```
helm install [app-name] [chart]
```
### Install an app in a specific namespace
```
helm install [app-name] [chart] --namespace [namespace]
```
### Override the default values with those specified in a file of your choice:
```
helm install [app-name] [chart] --values [yaml-file/url]
```
### Run a test installation to validate and verify the chart:
```
helm install [app-name] --dry-run --debug
```
### Uninstall a release:
```
helm uninstall [release]
```
# Perform App Upgrade and Rollback
### Upgrade an app:
```
helm upgrade [release] [chart]
```
### Instruct Helm to rollback changes if the upgrade fails:
```
helm upgrade [release] [chart] --atomic
```
### Upgrade a release. If it does not exist on the system, install it:
```
helm upgrade [release] [chart] --install
```
### Upgrade to a specified version:
```
helm upgrade [release] [chart] --version [version-number]
```
### Roll back a release:
```
helm rollback [release] [revision]
```
