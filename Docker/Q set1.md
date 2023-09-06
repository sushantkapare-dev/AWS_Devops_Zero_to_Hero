## what is Docker
Docker is a platform and a set of tools that allows developers to develop, package, and deploy applications as lightweight, portable containers. These containers can include everything needed to run the application, including code, runtime, libraries, and system tools. Docker provides a consistent and isolated environment for applications, making it easier to build, ship, and run software across different environments, such as development laptops, testing servers, and production servers.

## write diff docker comamnds 

**docker run**

**docker ps and docker ps -a**

**docker logs**

**docker build**

**docker images**

**docker stop**

**docker kill**

**docker rm rmi**

**docker exec**

**docker network ls**

**docker volume ls**

**docker-compose up**

**docker-compose down**

**docker inspect**

**docker cp**

## what is docker lifecycle
The Docker lifecycle refers to the various stages and processes involved in working with Docker containers. Docker is a platform for developing, shipping, and running applications inside containers, which are lightweight and isolated environments. Understanding the Docker lifecycle is crucial for effectively managing containerized applications. Here are the key stages in the Docker lifecycle:

1. **Creating a Docker Image**:
   - The Docker lifecycle begins with creating a Docker image, which is a snapshot of a file system that includes the application code, runtime, libraries, and dependencies.
   - Images are created using a Dockerfile, which contains instructions on how to build the image.
   - Docker images can be created from scratch or based on existing images from Docker Hub or other repositories.

2. **Building Images**:
   - To create a Docker image, you use the `docker build` command, which reads the Dockerfile and builds the image according to the instructions.
   - During this process, each instruction in the Dockerfile creates a layer in the image, allowing for efficient caching and reuse of layers.

3. **Storing Images**:
   - Docker images are typically stored in a registry, such as Docker Hub, a private registry, or a cloud-based container registry like AWS ECR or Google Container Registry.
   - You can use the `docker push` command to push images to a registry for distribution and sharing.

4. **Running Containers**:
   - Once an image is created and stored, you can run containers based on that image using the `docker run` command.
   - Containers are instances of Docker images and provide an isolated runtime environment for applications.

5. **Managing Containers**:
   - Docker provides various commands for managing containers, including `docker start`, `docker stop`, `docker restart`, and `docker rm` (remove).
   - You can also inspect container logs, attach to a running container, and execute commands within containers.

6. **Monitoring and Debugging**:
   - Docker provides tools and commands for monitoring the performance of containers, such as `docker stats`.
   - Debugging tools like `docker exec` and `docker logs` help troubleshoot issues within containers.

7. **Updating Images and Containers**:
   - As your application evolves, you may need to update the Docker images and containers.
   - This involves building new images with updated code and dependencies, pushing them to the registry, and then updating running containers with the new image versions.

8. **Scaling**:
   - Docker makes it easy to scale applications by creating multiple containers from the same image.
   - Container orchestration tools like Kubernetes and Docker Swarm help manage and scale containers across multiple hosts.

9. **Cleaning Up**:
   - It's important to clean up unused containers and images to save disk space. You can use commands like `docker system prune` and `docker container prune` for this purpose.

10. **Retiring and Archiving**:
    - Eventually, containers and images may need to be retired or archived when they are no longer in use.

Understanding and effectively managing these stages in the Docker lifecycle is essential for containerized application development and deployment. Docker simplifies the process of creating, running, and managing containers, making it a popular choice for containerization in DevOps and application deployment workflows.

## Tell me about docker container and diff from VM

## What is docker images and docker image registry

## What is dockerfile

## What is docker-compose

## What is docker namespace

## What is dockerhub

## Diff between virtualization and containerization

## Diff between COPY and ADD cmd in Dockerfile

## Can container restart by itself

## what is docker-volume and where to store

## What is diff docker component

## Diff between CMD and ENTRYPOINT in docker

## How can you transfer a file from one to other container

## Diff between Dockerfile , Docker-compose and Docker-swarm

## What is multi-stage build in docker

## what are destroless images in Docker

## Will data on container be lost when docker container exists

## What are the common docker practices to reduce the size of docker images

## What are networking types and what is default n/w

## can you explain how to isolate n/w between containers

## Realtime challenges with docker

## what steps you take to secure containers

## what is "docker --compress ."

## what is Docker Layerd architecture

## How to make container volume persistant ? 

## Can i setup my own docker repository

----------------------------------------------

[wihout 'docker0' networking container not communiate with host machine ]
