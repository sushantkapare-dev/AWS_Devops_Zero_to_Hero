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
