## 𝗪𝗵𝗮𝘁 𝗶𝘀 𝗮𝗻 𝗜𝗻𝗴𝗿𝗲𝘀𝘀 𝗖𝗼𝗻𝘁𝗿𝗼𝗹𝗹𝗲𝗿 and how can you use it in your application.
An Ingress Controller is a critical component in Kubernetes that manages and controls the incoming traffic to services running in a Kubernetes cluster. It acts as a reverse proxy and is responsible for routing external traffic to the appropriate services within the cluster based on the defined rules and configurations. Ingress Controllers typically work with Ingress resources, which are Kubernetes objects that define rules for managing incoming HTTP and HTTPS traffic.

Here's how you can use an Ingress Controller in your application:

1. **Installation**: First, you need to choose an Ingress Controller that suits your needs. Popular choices include Nginx Ingress Controller, Traefik, HAProxy Ingress, and more. You'll need to install the chosen Ingress Controller in your Kubernetes cluster. Installation methods may vary, but most controllers have Helm charts or YAML manifests that you can apply.

2. **Define Ingress Resources**: Once the Ingress Controller is installed, you can define Ingress resources within your Kubernetes cluster. These resources specify the rules for routing traffic to your services. You can define routing based on paths, hostnames, or other criteria. Here's an example of an Ingress resource:

   ```yaml
   apiVersion: networking.k8s.io/v1
   kind: Ingress
   metadata:
     name: my-ingress
   spec:
     rules:
     - host: myapp.example.com
       http:
         paths:
         - path: /app
           pathType: Prefix
           backend:
             service:
               name: myapp-service
               port:
                 number: 80
   ```

   In this example, traffic to `myapp.example.com/app` will be routed to the `myapp-service` within the cluster.

3. **TLS/SSL Termination**: Ingress Controllers also support TLS/SSL termination. You can configure TLS certificates for your Ingress resources to secure traffic using HTTPS.

4. **Load Balancing**: Many Ingress Controllers provide load balancing features, ensuring that incoming traffic is distributed evenly among the backend services.

5. **Customization and Advanced Routing**: Depending on the Ingress Controller you choose, you can often customize and fine-tune the routing behavior. You can add authentication, rate limiting, rewrite rules, and more to your Ingress configurations.

6. **Monitoring and Logging**: Ingress Controllers often offer monitoring and logging capabilities, allowing you to track traffic, diagnose issues, and ensure the health of your application.

7. **Scaling**: As your application scales, the Ingress Controller can handle increased traffic and distribute it to the appropriate services without you needing to manually reconfigure external routing.

## Tell 𝟱 𝗯𝗲𝘀𝘁 𝗽𝗿𝗮𝗰𝘁𝗶𝗰𝗲𝘀 to make your Container Image 𝗺𝗼𝗿𝗲 𝘀𝗲𝗰𝘂𝗿𝗲 and also suggest some ways to 𝗿𝗲𝗱𝘂𝗰𝗲 𝘁𝗵𝗲 𝘀𝗶𝘇𝗲 of the Container image.

## What’s the difference between 𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗰𝗼𝗿𝗱𝗼𝗻 𝗻𝗼𝗱𝗲 and 𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗱𝗿𝗮𝗶𝗻 𝗻𝗼𝗱𝗲 command.

## We have an application that serves 𝟲𝟬𝗠+ 𝗲𝗻𝗱 𝘂𝘀𝗲𝗿𝘀 and is deployed on a Cloud based cluster. We have 𝟭 𝗺𝗮𝘀𝘁𝗲𝗿 and 𝟲 𝘄𝗼𝗿𝗸𝗲𝗿 nodes to handle our workload.
Our master node is deployed in 𝗮𝘀𝗶𝗮-𝘀𝗼𝘂𝘁𝗵𝗲𝗮𝘀𝘁 region and the worker nodes are deployed in 𝘂𝘀-𝗰𝗲𝗻𝘁𝗿𝗮𝗹 region.
Our 𝗮𝘀𝗶𝗮-𝘀𝗼𝘂𝘁𝗵𝗲𝗮𝘀𝘁 node suddenly becomes unresponsive.
What will happen to your deployed application ?
Describe your approach on troubleshooting the issue.

## 𝗗𝗲𝘀𝗶𝗴𝗻 𝗮 𝗥𝗲𝗰𝗼𝗺𝗺𝗲𝗻𝗱𝗮𝘁𝗶𝗼𝗻 𝗲𝗻𝗴𝗶𝗻𝗲 just by using Cloud services and specify the reason for picking them.

## 𝗖𝗮𝗻 𝘄𝗲 𝗰𝗵𝗮𝗻𝗴𝗲 𝘁𝗵𝗲 𝗥𝘂𝗻 𝗧𝗶𝗺𝗲 𝗼𝗳 𝗮 𝗰𝗼𝗻𝘁𝗮𝗶𝗻𝗲𝗿
If yes then how? If no then why not?

## You want to 𝗱𝗲𝘀𝗶𝗴𝗻 𝗮 𝗛𝗔 𝗰𝗹𝘂𝘀𝘁𝗲𝗿 with the total nodes count of 20.
What should be the number of 𝗺𝗮𝘀𝘁𝗲𝗿 node and 𝘄𝗼𝗿𝗸𝗲𝗿 node to achieve it?

## 𝗪𝗿𝗶𝘁𝗲 𝗮 𝘀𝗵𝗲𝗹𝗹 𝘀𝗰𝗿𝗶𝗽𝘁 𝘁𝗼 𝗹𝗶𝘀𝘁 𝗱𝗼𝘄𝗻 𝗮𝗹𝗹 𝘁𝗵𝗲 𝗿𝗲𝘀𝗼𝘂𝗿𝗰𝗲𝘀 𝗶𝗻 𝗮 𝗽𝗿𝗼𝗷𝗲𝗰𝘁(𝗰𝗹𝗼𝘂𝗱) 𝗮𝗻𝗱 𝗶𝗳 𝘁𝗵𝗲 𝘁𝗶𝗺𝗲 𝗱𝘂𝗿𝗮𝘁𝗶𝗼𝗻 𝗲𝘅𝗰𝗲𝗲𝗱𝘀 𝟮 𝗵𝗼𝘂𝗿, 𝗱𝗲𝗹𝗲𝘁𝗲 𝗮𝗹𝗹 𝘁𝗵𝗲 𝗿𝗲𝘀𝗼𝘂𝗿𝗰𝗲𝘀.

## Suggest 𝟱 𝗺𝗲𝗮𝘀𝘂𝗿𝗲𝘀 𝘁𝗼 𝗿𝗲𝗱𝘂𝗰𝗲 𝘁𝗵𝗲 𝗰𝗼𝘀𝘁 of the application running on a Kubernetes cluster.

## Our application is deployed on a Cloud based Instance and is connected with a Cloud based Database, 𝗰𝗮𝗻 𝘆𝗼𝘂 𝗰𝗮𝗹𝗰𝘂𝗹𝗮𝘁𝗲 𝘁𝗵𝗲 𝘁𝗼𝘁𝗮𝗹 𝗦𝗟𝗔 𝗳𝗼𝗿 𝗼𝘂𝗿 𝗮𝗽𝗽𝗹𝗶𝗰𝗮𝘁𝗶𝗼𝗻?

## 𝗛𝗼𝘄 𝘄𝗶𝗹𝗹 𝘆𝗼𝘂 𝗺𝗮𝗸𝗲 𝘀𝘂𝗿𝗲 𝘁𝗵𝗮𝘁 𝘁𝗵𝗲 𝗶𝗺𝗮𝗴𝗲𝘀 𝗳𝗿𝗼𝗺 𝗮 𝘀𝗽𝗲𝗰𝗶𝗳𝗶𝗰 𝗿𝗲𝗴𝗶𝘀𝘁𝗿𝘆 𝗮𝗿𝗲𝗻’𝘁 𝗯𝗲𝗶𝗻𝗴 𝘂𝘀𝗲𝗱 𝗶𝗻 𝗮𝗻𝘆 𝗼𝗳 𝘁𝗵𝗲 𝗰𝗹𝘂𝘀𝘁𝗲𝗿 𝗿𝗲𝘀𝗼𝘂𝗿𝗰𝗲(you can use any open source tool).

## 𝗪𝗲 𝗿𝘂𝗻 𝗮𝗹𝗹 𝗼𝘂𝗿 𝗽𝗿𝗶𝗼𝗿𝗶𝘁𝘆 𝘁𝗮𝘀𝗸𝘀 𝗼𝗻 𝗮 𝗡𝗼𝗱𝗲 𝘄𝗶𝘁𝗵 𝘁𝗵𝗲 𝘀𝗮𝗺𝗲 𝗰𝗮𝗽𝗮𝗯𝗶𝗹𝗶𝘁𝗶𝗲𝘀 𝗮𝘀 𝘁𝗵𝗲 𝗔𝗽𝗽𝗹𝗲 𝗠𝟮 𝗰𝗵𝗶𝗽 (𝟴 𝗖𝗼𝗿𝗲 𝗖𝗣𝗨, 𝟭𝟬 𝗖𝗼𝗿𝗲 𝗖𝗣𝗨). 𝗢𝗻𝗲 𝗣𝗿𝗶𝗼𝗿𝗶𝘁𝘆 𝘁𝗮𝘀𝗸 𝗽𝗼𝗽 𝘂𝗽𝘀 𝟭𝟬 𝗺𝗶𝗻𝘀 𝗯𝗲𝗳𝗼𝗿𝗲 𝘆𝗼𝘂𝗿 𝗰𝗹𝗼𝗰𝗸 𝗼𝘂𝘁 𝘁𝗶𝗺𝗲 𝗮𝗻𝗱 𝘆𝗼𝘂 𝗮𝗿𝗲 𝗮𝗹𝗼𝗻𝗲 𝗶𝗻 𝘁𝗵𝗲 𝗼𝗳𝗳𝗶𝗰𝗲, discuss the approach through which you will make sure that the workload is deployed on the same node.

## 𝗢𝗻𝗲 𝗶𝗻𝘁𝗲𝗿𝗻 𝗷𝗼𝗶𝗻𝗲𝗱 𝘂𝘀 𝗿𝗲𝗰𝗲𝗻𝘁𝗹𝘆 𝗮𝗻𝗱 𝗶𝘀 𝗮𝘀𝘀𝗶𝗴𝗻𝗲𝗱 𝘁𝗵𝗲 𝘁𝗮𝘀𝗸 𝘁𝗼 𝗰𝗹𝗲𝗮𝗻 𝘂𝗽 𝗮𝗹𝗹 𝘁𝗵𝗲 𝗽𝗼𝗱𝘀, 𝗵𝗲 𝘁𝗿𝗶𝗲𝘀 𝘁𝗼 𝗱𝗲𝗹𝗲𝘁𝗲 𝗮𝗹𝗹 𝘁𝗵𝗲 𝗽𝗼𝗱𝘀 𝗯𝘂𝘁 𝗮𝘀 𝘀𝗼𝗼𝗻 𝗮𝘀 𝗵𝗲 𝗱𝗲𝗹𝗲𝘁𝗲𝘀 𝘁𝗵𝗲 𝗽𝗼𝗱𝘀, 𝗮𝗻𝗼𝘁𝗵𝗲𝗿 𝗼𝗻𝗲 𝗴𝗲𝘁𝘀 𝗰𝗿𝗲𝗮𝘁𝗲𝗱 𝗮𝘂𝘁𝗼𝗺𝗮𝘁𝗶𝗰𝗮𝗹𝗹𝘆, 𝗻𝗼𝘄 𝗵𝗲 𝗶𝘀 𝘀𝘁𝗿𝘂𝗰𝗸 𝗶𝗻 𝘁𝗵𝗶𝘀 𝗶𝗻𝗳𝗶𝗻𝗶𝘁𝗲 𝗹𝗼𝗼𝗽 𝗼𝗳 𝗱𝗲𝗹𝗲𝘁𝗶𝗻𝗴 𝘁𝗵𝗲 𝘁𝗵𝗶𝗻𝗴𝘀. Where do you think the real issue is?
No you can’t kill the cluster :-)

## 𝗬𝗼𝘂 𝘄𝗮𝗻𝘁 𝘁𝗼 𝗺𝗮𝗸𝗲 𝘀𝘂𝗿𝗲 𝘁𝗵𝗮𝘁 𝗮𝗹𝗹 𝘁𝗵𝗲 𝗸𝟴𝘀 𝗼𝗯𝗷𝗲𝗰𝘁𝘀 𝗰𝗿𝗲𝗮𝘁𝗲𝗱 𝗶𝗻 𝘆𝗼𝘂𝗿 𝗼𝗿𝗴𝗮𝗻𝗶𝘀𝗮𝘁𝗶𝗼𝗻 𝗳𝗼𝗹𝗹𝗼𝘄 𝗮 𝗽𝗮𝗿𝘁𝗶𝗰𝘂𝗹𝗮𝗿 𝗻𝗼𝗺𝗲𝗻𝗰𝗹𝗮𝘁𝘂𝗿𝗲, how will you make sure to enforce this?

## 𝗬𝗼𝘂𝗿 𝗶𝗻𝗳𝗿𝗮 𝘁𝗲𝗮𝗺 𝗿𝗲𝘀𝗲𝗿𝘃𝗲𝗱 𝗮 𝗣𝗲𝗿𝘀𝗶𝘀𝘁𝗲𝗻𝘁 𝗩𝗼𝗹𝘂𝗺𝗲 𝗳𝗼𝗿 𝘆𝗼𝘂 𝘄𝗶𝘁𝗵 𝘀𝗽𝗲𝗰𝘀 𝗼𝗳 𝘀𝘁𝗼𝗿𝗮𝗴𝗲 𝗮𝘀 𝟭𝟬𝗚𝗶 𝗮𝗻𝗱 𝗔𝗰𝗰𝗲𝘀𝘀 𝗠𝗼𝗱𝗲𝘀 𝗮𝘀 𝗥𝗲𝗮𝗱𝗪𝗿𝗶𝘁𝗲𝗠𝗮𝗻𝘆. You tried attaching the volume with the persistent volume claim with a storage request of 50Gi and Access Modes of ReadWriteOnce.
But somehow the status of PVC is still not changed to Bound, can you suggest some solutions?

## 𝗔𝗿𝗲 𝘀𝗲𝗰𝗿𝗲𝘁𝘀 𝗶𝗻 𝗞𝘂𝗯𝗲𝗿𝗻𝗲𝘁𝗲𝘀 𝗲𝗻𝗰𝗿𝘆𝗽𝘁𝗲𝗱 𝗯𝘆 𝗱𝗲𝗳𝗮𝘂𝗹𝘁? If yes then what’s the algorithm used, if not then what’s the real use?

## 𝗡𝗲𝘁𝘄𝗼𝗿𝗸 𝗽𝗼𝗹𝗶𝗰𝗶𝗲𝘀 𝗶𝗻 𝗸𝟴𝘀 𝗼𝗽𝗲𝗿𝗮𝘁𝗲 𝗮𝘁 𝘄𝗵𝗶𝗰𝗵 𝗹𝗮𝘆𝗲𝗿 𝗼𝗳 𝗻𝗲𝘁𝘄𝗼𝗿𝗸𝘀? And if it operates at LayerX, what other alternates are used to control traffic at LayerY? Treat X and Y as integers.

## 𝗖𝗮𝗻 𝘄𝗲 𝗽𝗶𝗻𝗴 𝗮 𝗦𝗲𝗿𝘃𝗶𝗰𝗲 𝗼𝗯𝗷𝗲𝗰𝘁 𝗶𝗻 𝗞𝘂𝗯𝗲𝗿𝗻𝗲𝘁𝗲𝘀? If yes then which service, else how can we know if the service is up and running?

