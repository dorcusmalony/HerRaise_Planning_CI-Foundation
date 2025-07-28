# Phase 2: Containerization & Infrastructure as Code

## Objectives
 
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
- [ ] Build Docker image locally
- [ ] Push image to ACR registry
- [ ] Deploy via App Service console/CLI
- [ ] Verify live application URL

### 4. Peer Review
- [ ] Review peer's Pull Request
- [ ] Provide constructive feedback
- [ ] Document review process

## Live Application URL
 **Pending deployment**: Will be updated after manual deployment

```
Application URL: [To be provided after deployment]
App Service: [To be provided after deployment]
```

## Infrastructure Screenshots
 **Screenshots will be added after successful provisioning**

1. Azure Container Registry
2. App Service
3. PostgreSQL Database
4. Resource Group Overview
5. Running Application

## Technical Specifications

### Container Configuration
- **Base Image**: node:18-alpine
- **Port**: 3000
- **Environment**: Production optimized
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
>>>>>>> ea33925c131ac0a8e254adffe5ae0f9b44d65fcd
terraform init
terraform plan
terraform apply

 
# Container deployment
./scripts/deploy.sh
```



##  Last Updated
**25 July** - Phase 2 Complete
=======
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

**Last Updated**: [Date to be updated]
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
>>>>>>> ea33925c131ac0a8e254adffe5ae0f9b44d65fcd
