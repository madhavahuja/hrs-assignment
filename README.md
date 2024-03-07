1. Infrastructure

Infrastructure created -

    EKS Cluster with 1.28 EKS Version
    Nodegroup (AWS Managed)

    User can create a manifest file through which, docker images can be integrated with EKS Deployment and rolling updates can be easily performed on EKS Cluster.

    Java microservices can be deployed on EKS Cluster in single namespace.
    
    For mutiple namespace, each microservice can be deployed in different namespace and using EXTERNALNAMES, these services can communicate to each other

    Suppose test1 deployment is deployed in dev namespace and test2 in testing namespace

    Service endpoint for test1 - test1.dev.svc.cluster.local
    Service endpoint for test2 - test2.testing.svc.cluster.local

    These endpoints can be achieved by configuring a service with type ExternalName in their specific namespaces.

    Reason of using EKS
    Highly scalable infra
    Provides dynamic container environment with an orchestration tool
    Seamless integration with different CI/CD tools such as Jenkins, Github Actions etc with various types of plugins
    

2. Automation


Replace the following values in jenkinsfile

<AWS_ACCESS_KEY>

<AWS_SECRET_KEY>

<REGION>

<ACCOUNT_ID>

<REPOSITORY_NAME>

<CLUSTER_NAME>

<DEPLOYMENT_NAME>

<CONTAINER_NAME>

<NAMESPACE>

with the exact values. Theese are the placeholders added for your understanding and better clarity.



3. Coding
