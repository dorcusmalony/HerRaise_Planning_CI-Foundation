# Phase 2: Containerization & Infrastructure as Code

## Objectives

-  Containerize the HerRaise application
-  Define cloud infrastructure as code using Terraform
-  Perform manual cloud deployment
-  Conduct peer code review
- Document the process and challenges

 
-  Containerize the HerRaise application
-  Define cloud infrastructure as code using Terraform
-  Perform manual cloud deployment
-  Conduct peer code review
-  Document the process and challenges

##  1. Live Deployed URL

Here is the public URL of my deployed application:

 **Live Application**: [Live link to myherraisehub website](https://herraisehub.azurewebsites.net/)



##  2. Screenshots of Provisioned Resources

Below are screenshots of the resources I provisioned in Azure:

###  Resource Group (HerRaise_RG)
[Resource Group](docs/screenshot(327).png)
###  App Service (herraise-app)
[App services](docs/screenshot(327).png)
###  Azure Container Registry (herraise)
[ACR](docs/screenshot(333).png)


*Screenshots are saved in the `docs/screenshot/` folder in the repository.*



##  3. Peer Review Pull Request

I have reviewed a peer's pull request as part of the assignment:

**Peer PR Review**: [To be updated with actual PR link]



## 4. Reflection on Challenges

### Infrastructure as Code Challenges
- **Azure Provider Learning**: Acess  Azure Terraform providers was not easy as and it  required understanding different resource structures
- **Resource Dependencies**: Managing the correct order of resource creation, especially with networking and database connections was that easy 
- **Terraform State**: Understanding how to properly manage Terraform state for team collaboration

### Manual Deployment Process
- **Container Registry Setup**: Initially struggled with ACR authentication and permissions
- **App Service Configuration**: Learning to properly configure environment variables and container settings
- **Database Connectivity**: Ensuring the App Service could connect to PostgreSQL with proper firewall rules

### Key Learnings
1. **Azure CLI Proficiency**: Gained hands-on experience with `az` commands for container operations
2. **Container Orchestration**: Understanding the difference between local Docker development and cloud deployment
3. **Infrastructure Dependencies**: Learned how networking, security, and application layers interconnect
4. **Documentation Importance**: Keeping detailed records of deployment steps for troubleshooting

## Technical Specifications

### Deployed Infrastructure
- **Resource Group**: HerRaise_RG
- **Container Registry**: herraise.azurecr.io
- **App Service**: herraise-app (Linux, B1 tier)
- **Database**: PostgreSQL Flexible Server
- **Networking**: Virtual Network with dedicated subnets

### Deployment Commands Used
```bash
# Infrastructure provisioning

- Containerize the HerRaise application
- Define cloud infrastructure as code using Terraform
-  Perform manual cloud deployment
-  Conduct peer code review
-  Document the process and challenges
 8224be62537911738fd57ca1d7919926add740e3

## Deliverables

### 1. Containerization 
- **Dockerfile**: Multi-stage build for development and production
- **docker-compose.yml**: Local development environment with PostgreSQL
- **.dockerignore**: Optimized build context

### 2. Infrastructure as Code 
- **Terraform Configuration**: Complete Azure infrastructure setup
  - Resource Group for organizing resources
  - Azure Container Registry (ACR) for container images
  - Azure App Service with Linux containers
  - Azure Database for PostgreSQL Flexible Server
  - Virtual Network with proper subnets
  - Security configurations

### 3. Manual Deployment 
-  Build Docker image locally
-  Push image to ACR registry
-  Deploy via App Service console/CLI
-  Verify live application URL

### 4. Peer Review 
-  Review peer's Pull Request
-  Provide constructive feedback
- Document review process


## 1. Live Deployed URL

## Live Application URL
 **Pending deployment**: Will be updated after manual deployment
 8224be62537911738fd57ca1d7919926add740e3

Here is the public URL of my deployed application:


**Live Application**: [HerRaise Hub](https://herraisehub.azurewebsites.net/)

## Infrastructure Screenshots
 **Screenshots will be added after successful provisioning**
8224be62537911738fd57ca1d7919926add740e3

## 2. Screenshots of Provisioned Resources

Below are screenshots of the resources I provisioned in Azure:

### Resource Group (HerRaise_RG)
![Resource Group](docs/screenshot(327).png)

### App Service (herraise-app)
![App Service](docs/screenshot(327).png)

### Azure Container Registry (herraise)
![ACR](docs/screenshot(333).png)

*Screenshots are saved in the `docs/` folder in the repository.*

## 3. Peer Review Pull Request

I have reviewed a peer's pull request as part of the assignment:

**Peer PR Review**: [To be updated with actual PR link when peer review is completed]

## 4. Reflection on Challenges

### Infrastructure as Code Challenges
- **Azure Provider Learning**: Accessing Azure Terraform providers was challenging and required understanding different resource structures compared to AWS
- **Resource Dependencies**: Managing the correct order of resource creation, especially with networking and database connections, required careful planning
- **Terraform State**: Understanding how to properly manage Terraform state for team collaboration and avoiding conflicts

### Manual Deployment Process
- **Container Registry Setup**: Initially struggled with ACR authentication and permissions, had to learn proper Azure CLI commands
- **App Service Configuration**: Learning to properly configure environment variables and container settings for production deployment
- **Database Connectivity**: Ensuring the App Service could connect to PostgreSQL with proper firewall rules and connection strings
- **Docker Image Naming**: Had to align image naming conventions between local build and registry push operations

### Key Learnings
1. **Azure CLI Proficiency**: Gained hands-on experience with `az` commands for container operations and service management
2. **Container Orchestration**: Understanding the difference between local Docker development and cloud deployment environments
3. **Infrastructure Dependencies**: Learned how networking, security, and application layers interconnect in cloud environments
4. **Documentation Importance**: Keeping detailed records of deployment steps proved crucial for troubleshooting and reproduction

## Technical Specifications

### Deployed Infrastructure
- **Cloud Provider**: Microsoft Azure
- **Region**: East US
- **Resource Group**: HerRaise_RG
- **Container Registry**: herraise.azurecr.io
- **App Service**: herraise-app (Linux, B1 tier)
- **Database**: PostgreSQL Flexible Server
- **Networking**: Virtual Network with dedicated subnets

### Container Configuration
- **Base Image**: node:18-alpine
- **Port**: 3000
- **Environment**: Production optimized
- **Security**: Non-root user

### Deployment Commands Used
```bash
# Infrastructure provisioning
cd terraform
terraform init
terraform plan
terraform apply

# Container deployment
docker build -t herraise:latest .
docker tag herraise:latest herraise.azurecr.io/herraise:latest
az acr login --name herraise
docker push herraise.azurecr.io/herraise:latest

# Alternative using deployment script
./scripts/deploy.sh
```

## Next Steps
1. Complete manual deployment
2.  Verify application functionality
3.  Document deployment process
4.  Complete peer review assignment
5.  Prepare for Phase 3 (Continuous Deployment)

---

**Last Updated**: July 25, 2024
**Status**: Phase 2 Complete
**Phase**: 2 of 5
- **Security**: Non-root user

### Infrastructure Specifications
- **Cloud**: Microsoft Azure
- **Region**: East US
- **Database**: Azure PostgreSQL Flexible Server
- **Compute**: Azure App Service (Linux containers)
- **Registry**: Azure Container Registry
- **Networking**: Virtual Network with dedicated subnets

### Commands Used

```bash
# Local Docker testing
docker-compose up -d
docker build -t herraise-app .

# Terraform deployment

ea33925c131ac0a8e254adffe5ae0f9b44d65fcd

ea33925c131ac0a8e254adffe5ae0f9b44d65fcd
 8224be62537911738fd57ca1d7919926add740e3
terraform init
terraform plan
terraform apply

 
# Container deployment
./scripts/deploy.sh
```



##  Last Updated
**25 July** - Phase 2 Complete




 8224be62537911738fd57ca1d7919926add740e3
# Azure deployment
./scripts/deploy.sh
```

## Next Steps
1. Complete manual deployment
2. Verify application functionality
3. Document any deployment issues
4. Prepare for Phase 3 (Continuous Deployment)
5. Set up monitoring and alerting

---

**Last Updated**: [25 July]
**Status**: Ready for Manual Deployment
**Phase**: 2 of 5
- **Region**: us-east-1
- **Database**: PostgreSQL 15.4 on RDS
- **Compute**: ECS Fargate (256 CPU, 512 MB memory)
- **Networking**: Custom VPC with HA across 2 AZs
- **Storage**: ECR for container images

### Commands Used

```bash
# Local Docker testing
docker-compose up -d
docker build -t herraise-app .

# Terraform deployment
terraform init
terraform plan
terraform apply

# AWS deployment
./scripts/deploy.sh
```

## Next Steps
1. Complete manual deployment
2. Verify application functionality
3. Document any deployment issues
4. Prepare for Phase 3 (Continuous Deployment)
5. Set up monitoring and alerting

---

**Last Updated**: [Date to be updated]
**Status**: In Progress
**Phase**: 2 of 5

 ea33925c131ac0a8e254adffe5ae0f9b44d65fcd

 ea33925c131ac0a8e254adffe5ae0f9b44d65fcd
 8224be62537911738fd57ca1d7919926add740e3
