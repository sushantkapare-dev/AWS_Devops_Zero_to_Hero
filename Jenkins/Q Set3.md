## How is continuous integration achieved using Jenkins?
Continuous integration is a process where a developer’s code changes are constantly integrated into the main code and the same will be tested automatically and the results of the tests will decide whether the change is ready for deployment. In this process:
Developer Makes a change — commit/pull_request — in feature/dev branch
Source Control Management system generates appropriate events
SCM Specific Jenkins Plugins like Git/SVN will detect those events from the configured repositories and these events will be used to Trigger — build/dependent/test — jobs on Jenkins
After the Test/Dependent jobs are completed, the change/patch will be labeled according to the status of the test job
Based on the Status (i.e. readiness of a change to be merged with the main
branch), the Continuous Delivery or Continuous Deployment strategy/tool will take it forward.

## What is Artifact Archival & how to do it in Pipelines?
Artifacts are the exportable/storable/archivable results of a specific job build. This can be configured using a plugin called — Copy artifact Plugin. Based on the configured pattern, the files/directories matching the configured patterns will be archived for a Jenkins build, which can be used for future references. In the pipeline, it can be configured as follows -

archiveArtifacts artifacts: ‘output/**/*’
## How to configure inclusions & exclusions in Artifacts Archival?
Artifact archival takes in a pattern for matching target files. Similarly, it also takes in a pattern (ANT build system pattern for matching files) for exclusion as well which will be ignored while selecting the files for archival. For e.g.
archiveArtifacts artifacts: ‘output/*.txt’, excludes: ‘output/specific_file.txt’
The above command will archive all the text files from the output folder except specific_file.txt

## How can we share information between different build steps or stages in a Jenkins Job?
Every build step or stage will be running in its process and hence sharing information between two different build steps is not so direct. We can use either a File, a Database Entry, an Environment Variable, etc. to share info from one build step to another or a post-build action.

## How code coverage is measured/tracked using Jenkins in a CI environment?

Using language-specific code coverage plugins like JaCoCo, CodeCov, etc or generic tools/plugins like Sonarqube which will add the code coverage data to builds with some minor tweaks in the code and the same can be displayed as a graph in Jenkins.

## How can a job configuration be reset to an earlier version/state?

From the Job details page, we can use Job Config History to — See diff, Review & Revert the Job configs from the history of changes we have made to a particular job. This will be super useful when a job is misconfigured by someone by mistake, it can be reviewed and reverted easily to any of its earlier states.

## How to do Global Tools Configuration in Jenkins?

Global Tools are tools that need to be installed outside the Jenkins environment and need to be controlled from within the Jenkins environment. Hence, it needs its corresponding Jenkins plugin as well. Steps to using a Global Tool generally include -

Install the tool Plugin into the Jenkins instance, to include the global tool into a list of global tools used by Jenkins.
Install the tool in the Jenkins instance or provide away (maybe a command to download and) install the tool during runtime.
Go to Manage Jenkins -> Global Tools Configuration and Scroll through the tool list and configure the global tool-specific configurations.
Make use of the installed global Tool in your job/pipeline.

## How to create & use a Shared Library in Jenkins?
Basic requirements for a Jenkins shared library to be used in a Pipeline Code are -

A Repository with pipeline shared library code in SCM.
An appropriate SCM Plugin configuration for the Jenkins instance.
Global Shared Library should be configured in Jenkins Global configuration.
Include the Shared Library in the Pipeline Code and use the methods defined in the Jenkins Shared Library. E.g.
#!/urs/bin/env groovy

@Library(‘fs_jenkins_shared_library@v2.0.7’)_

##  How to install a Custom Jenkins Plugin or a Version of Plugin Not available in Jenkins Update Center?

Generally, it is the best practice to use the latest version of a plugin. But there are ways to install custom plugins or outdated versions of a published plugin. Jenkins Plugins are exported using a .hpi file and the same can be installed in multiple ways -

Using the Jenkins CLI

java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin SOURCE … [-deploy] [- name VAL] [-restart]

The above command Installs a plugin either from a file, an URL or from the update center.

SOURCE: If this points to a local file, that file will be installed. If this is an URL, Jenkins downloads the URL and installs that as a plugin. Otherwise, the name is assumed to be the short name of the plugin in the existing update center (like “findbugs”) and the plugin will be installed from the update center.
-deploy: Deploy plugins right away without postponing them until the reboot.
-name VAL: If specified, the plugin will be installed as this short name (whereas normally the name is inferred from the source name automatically).
-restart: Restart Jenkins upon successful installation.
Advanced Installation — via — Web UI

Assuming a .hpi file has been downloaded, a logged-in Jenkins administrator may upload the file from within the web UI:

Navigate to the Manage Jenkins > Manage Plugins page in the web UI.
Click on the Advanced tab.
Choose the .hpi file under the Upload Plugin section.
Upload the plugin file.
Restart the Jenkins instance
Advanced Installation — via — On the master

Assuming a .hpi file has been explicitly downloaded by a systems administrator, the administrator can manually place the .hpi file in a specific location on the file system.

Copy the downloaded .hpi file into the JENKINS_HOME/plugins directory on the Jenkins controller (for example, on Debian systems JENKINS_HOME is generally /var/lib/jenkins).

The master will need to be restarted before the plugin is loaded and made available in the Jenkins environment

## What is In-process Script Approval and how it works?

Jenkins, and several plugins, allow users to execute Groovy scripts in Jenkins. To protect Jenkins from the execution of malicious scripts, these plugins execute user- provided scripts in a Groovy Sandbox that limits what internal APIs are accessible.

This protection is provided by the Script Security plugin. As soon as an unsafe method is used in any of the scripts, the “In-process Script Approval” action should appear in “Manage Jenkins” to allow Administrators to make a decision about which unsafe methods, if any, should be allowed in the Jenkins environment.

This in-process script approval inherently improves the security of the overall Jenkins ecosystem.

## Can we monitor Jenkins using common Observability tools?
Common monitoring platforms like DataDog, Prometheus, JavaMelody & few others — have their corresponding Jenkins plugin, which when configured, sends Metrics to the corresponding Monitoring platform, which can then be Observed with the latest tools & technologies. The same can be configured with Alarms & Notifications for immediate attention when something goes wrong.

## What is a Ping Thread in Jenkins and how it works?
Jenkins installs “ping thread” on every remote connection, such as Controller/Agent connections, regardless of its transport mechanism (such as SSH, JNLP, etc.). The lower level of the Jenkins Remoting Protocol is a message-oriented protocol, and a ping thread periodically sends a ping message that the receiving end will reply to. The ping thread measures the time it takes for the reply to arrive, and if it’s taking excessive 
time (currently 4 minutes and configurable), then it assumes that the connection was lost and initiates the formal close down.
This is to avoid an infinite hang, as some of the failure modes in the network cannot be detected otherwise. The timeout is also set to a long enough value so that a temporary surge in the load or a long garbage collection pause will not trip off the close-down.
Ping thread is installed on both controller & agent; each side pings the other and tries to detect the problem from their sides.
The ping thread time out is reported through java.util.logging. Besides, the controller will also report this exception in the agent launch log. Note that some agent launchers, most notably SSH agents, writes all stdout/stderr outputs from the agent JVM into this same log file, so you need to be careful.

## i have a jenkins pipeline and outside the pipeline there is a job then how we will rigger that job along with pipeline with examle

To trigger a job outside of a Jenkins pipeline while also running the pipeline, you can use the "build" step within your pipeline script. This allows you to initiate the execution of another job as part of your pipeline's workflow. Here's an example of how to do this:

1. First, make sure you have both the Jenkins pipeline and the job you want to trigger in your Jenkins instance.

2. In your Jenkins pipeline script, add a `build` step to trigger the external job. You can use the `build` step to specify the name of the job to be triggered. You can also pass parameters to the job if needed. Here's an example Jenkinsfile:

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Your pipeline steps here
            }
        }
        stage('Trigger External Job') {
            steps {
                build(job: 'NameOfYourExternalJob', parameters: [string(name: 'PARAM_NAME', value: 'PARAM_VALUE')])
            }
        }
    }
}
```

In this example, the "Trigger External Job" stage will trigger the job named "NameOfYourExternalJob" with a parameter named "PARAM_NAME" set to "PARAM_VALUE."

3. Save and commit your Jenkinsfile to your source code repository if you are using one, and Jenkins should automatically detect and run the pipeline when you make changes.

4. When the pipeline is executed, it will first run the pipeline's stages, and when it reaches the "Trigger External Job" stage, it will trigger the external job.

Make sure that the external job is configured to accept the parameters you are passing from the pipeline.

## How do you configure the job in Jenkins?
Configuring a job in Jenkins involves defining the parameters and settings that determine how Jenkins will execute the job. Here's a general guide on how to configure a job in Jenkins:

1. **Access Jenkins Dashboard:**
   - Open a web browser and navigate to the Jenkins server's URL.
   - Log in to the Jenkins dashboard using your credentials.

2. **Create a New Job:**
   - Click on the "New Item" or "Create New Job" link on the Jenkins dashboard.
   - Enter a name for your job and select the type of job you want to create (e.g., Freestyle project, Pipeline).

3. **General Configuration:**
   - Configure the general settings for your job, such as the description, discard old builds, and parameters.

4. **Source Code Management (SCM):**
   - If your project involves source code management, select the type of version control system (e.g., Git, SVN) and provide the necessary repository URL and credentials.

5. **Build Triggers:**
   - Specify when the job should be triggered. Options include polling the SCM for changes, triggering the build remotely, or triggering builds after other projects are built.

6. **Build Environment:**
   - Configure the build environment settings, such as setting environment variables or defining build wrappers.

7. **Build:**
   - Define the steps that Jenkins should take to build your project. This can include executing shell commands, running a script, or using build tools like Maven or Gradle.

8. **Post-build Actions:**
   - Define actions to be taken after the build is complete. This may include archiving artifacts, triggering other jobs, or sending notifications.

9. **Save Configuration:**
   - Once you have configured all the necessary settings, click the "Save" or "Apply" button to save the job configuration.

10. **Run the Job:**
   - You can manually trigger the job by selecting "Build Now" on the job's dashboard. Alternatively, the job may be triggered automatically based on the configured triggers.

## In Jenkins how can you find log files?
In Jenkins, you can find log files for your builds and jobs in a few different ways. Here are the common locations where you can find log files:

1. **Console Output:**
   - When you run a build, Jenkins provides real-time logging information in the "Console Output" section of the build job.
   - Navigate to the specific build job on the Jenkins dashboard.
   - Click on the build number of interest.
   - Look for the "Console Output" link. This shows the live log of the build process.

2. **Build Artifacts:**
   - If your build produces log files or artifacts, they may be archived as part of the build.
   - Check the "Artifacts" link on the left side of the build job's page.
   - If log files were archived, you can download them from this location.

3. **File System:**
   - Log files for Jenkins builds are stored on the Jenkins server's file system.
   - The default location is generally within the Jenkins home directory under the "jobs" folder.
   - The logs for each build are typically stored in a subdirectory named after the job and build number.

   Example:
   ```
   JENKINS_HOME/
   └── jobs/
       └── YourJobName/
           └── builds/
               └── 1/
                   └── log
   ```

   In this example, the log file for build number 1 of "YourJobName" would be in the `JENKINS_HOME/jobs/YourJobName/builds/1/log` file.

4. **Jenkins Server Log:**
   - Jenkins itself maintains a system log that captures overall Jenkins server activity.
   - The location of the system log depends on how Jenkins is installed and configured.
   - Common locations include `/var/log/jenkins/jenkins.log` on Linux systems.

   Example (Linux):
   ```
   /var/log/jenkins/jenkins.log
   ```

   - Check the Jenkins documentation or your system's documentation to find the exact location of the Jenkins server log.

5. **Workspace Directory:**
   - The workspace directory for a job contains files related to the job's build.
   - You can find the workspace directory on the job's page, and logs may be present there.

   Example:
   ```
   JENKINS_HOME/
   └── workspace/
       └── YourJobName/
   ```

   In this example, check the `YourJobName` directory for log files.

## Why we use pipeline in Jenkins?
In Jenkins, pipelines are used to define and manage the entire continuous delivery process for software development in a single, code-driven, and version-controlled manner. Jenkins Pipeline, often implemented using the Groovy DSL, offers a powerful and flexible way to express the complete build, test, and deployment stages as code. This enables teams to define, version, and share their build and deployment processes, making it easier to manage and reproduce complex workflows. Pipelines provide visibility into the entire lifecycle, allowing for traceability and auditability of changes. Additionally, they support parallel execution, enabling faster feedback cycles and efficient resource utilization. By incorporating stages, conditions, and approvals within the pipeline, it becomes a central hub for orchestrating diverse tasks, promoting collaboration among development, testing, and operations teams. Overall, Jenkins pipelines enhance automation, collaboration, and reproducibility in the software delivery process, contributing to more reliable and efficient continuous integration and delivery practices.

## Is Only Jenkins enough for automation?
While Jenkins is a robust and widely used automation server, relying solely on Jenkins might not be sufficient for comprehensive automation in some scenarios. Jenkins primarily excels at continuous integration and delivery (CI/CD) but may require additional tools and technologies to address broader automation needs.

For end-to-end automation, organizations often integrate Jenkins with other tools and platforms. Version control systems like Git, build tools such as Maven or Gradle, and containerization tools like Docker are commonly used alongside Jenkins to enhance the automation pipeline. Configuration management tools like Ansible, Puppet, or Chef may be incorporated for infrastructure provisioning and management. Additionally, testing frameworks, monitoring solutions, and collaboration platforms may complement Jenkins to cover various aspects of the software development lifecycle.

Moreover, for infrastructure-as-code (IaC) and cloud-native applications, incorporating tools like Terraform or Kubernetes is essential. Jenkins can be configured to work seamlessly with these tools, providing a more comprehensive automation framework.

In summary, while Jenkins is a foundational element for automation, a holistic approach often involves integrating it with a combination of tools that cater to specific aspects of the development and deployment process. This ensures a more versatile, efficient, and end-to-end automated workflow in the context of modern software development practices.

## Explain diff stages in CI-CD setup?
In a Continuous Integration and Continuous Deployment (CI/CD) setup, various stages are involved in automating the software delivery pipeline. These stages help ensure that code changes are systematically built, tested, and deployed, allowing for rapid and reliable delivery of software. Here are the typical stages in a CI/CD setup:

1. **Code Commit/Version Control:**
   - Developers commit code changes to a version control system (e.g., Git).
   - Each commit triggers the CI/CD pipeline to initiate the build process.

2. **Build:**
   - The code is compiled, and dependencies are resolved to create an executable or deployable artifact.
   - This stage ensures that the code can be successfully compiled and is ready for further testing.

3. **Code Quality Analysis:**
   - Static code analysis tools check the code for potential issues, adherence to coding standards, and best practices.
   - This stage helps maintain code quality and identifies potential issues early in the development process.

4. **Automated Testing:**
   - Unit tests, integration tests, and other automated tests are executed to validate the functionality of the code.
   - Testing at this stage ensures that new changes do not introduce regressions and maintains the reliability of the application.

5. **Artifact Storage:**
   - The build artifacts are stored in a repository (e.g., Nexus, Artifactory) for later use in deployment.
   - Storing artifacts centrally ensures traceability and facilitates deployment consistency.

6. **Deployment to Development/Testing Environment:**
   - The application is deployed to a development or testing environment for further testing and validation.
   - This stage allows for testing in an environment that closely resembles the production environment.

7. **User Acceptance Testing (UAT):**
   - The application is deployed to a UAT environment for testing by stakeholders or users.
   - This stage ensures that the software meets business requirements and is ready for production.

8. **Deployment to Production:**
   - Upon successful testing, the application is deployed to the production environment.
   - This stage involves careful coordination and may include strategies like blue-green deployments or canary releases to minimize downtime and risk.

9. **Monitoring and Logging:**
   - Continuous monitoring tools are employed to track the application's performance and identify any issues in real-time.
   - Logging mechanisms capture and store relevant information for analysis and troubleshooting.

10. **Rollback (if necessary):**
    - In the event of issues detected in the production environment, a rollback mechanism is triggered to revert to a previous version.
    - This stage ensures the ability to quickly respond to unexpected issues in production.


