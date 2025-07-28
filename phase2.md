Phase 2: Containerization & Infrastructure as Code

## Live Deployed URL

**Live Application**: [Live link to myherraisehub website](https://herraisehub.azurewebsites.net/)


 
-  Containerize the HerRaise application
-  Define cloud infrastructure as code using Terraform
-  Perform manual cloud deployment
-  Conduct peer code review
-  Document the process and challenges

##  1. Live Deployed URL

Here is the public URL of my deployed application:

 **Live Application**: [Live link to myherraisehub website](https://herraisehub.azurewebsites.net/
 )



##  2. Screenshots of Provisioned Resources

###  Resource Group (HerRaise_RG)
[Resource Group](./docs/Screenshot%20(327).png)
###  App Service (herraise-app)
[App services](./docs/Screenshot%20(328).png)
###  Azure Container Registry (herraise)
[ACR](./docs/Screenshot%20(333).png)

*Screenshots are saved in the `docs/screenshot/` folder in the repository.*



##  3. Peer Review Pull Request

I have reviewed a abuk work as my peer 


**Peer PR Review**: [Abuk pull review](https://github.com/AbukDuot/JobBridge/pull/17)





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



## 1. Live Deployed URL

## Live Application URL
 **Pending deployment**: Will be updated after manual deployment
 





Here is the public URL of my deployed application:


**Live Application**: [HerRaise Hub](https://herraisehub.azurewebsites.net/)


## 2. Screenshots of Provisioned Resources

## Screenshots of Provisioned Resources


Below are screenshots of the resources I provisioned in Azure:

### Resource Group (HerRaise_RG)
[Resource Group](./docs/Screenshot%20(327).png)

### App Service (herraise-app)
[App services](./docs/Screenshot%20(328).png)

### Azure Container Registry (herraise)
[ACR](./docs/Screenshot%20(333).png)

*Screenshots are saved in the `docs/screenshot/` folder in the repository.*

## Peer Review Pull Request

I have reviewed Abuk's work as my peer:

**Peer PR Review**: [Abuk pull review](https://github.com/AbukDuot/JobBridge/pull/17)

## Reflection on Challenges

### Infrastructure as Code Challenges
- **Azure Subscription Access**: As someone new to Azure, getting access to a subscription was difficult and understanding the billing/credit system was confusing
- **Azure Portal Navigation**: The Azure portal has so many services and options that it was overwhelming to navigate and find the right resources
- **Resource Dependencies**: Managing the correct order of resource creation, especially with networking and database connections was challenging
- **Learning Resources**: Had to rely heavily on teacher guidance and YouTube tutorials to understand Azure concepts, but finding clear, beginner-friendly tutorials was time-consuming

### Manual Deployment Process Challenges
- **Azure Interface Complexity**: The Azure portal interface has multiple access points and menus, making it hard to locate specific configuration settings
- **Container Registry Authentication**: Setting up proper authentication between Azure Container Registry and App Service
- **Environment Variable Configuration**: Ensuring all necessary environment variables were properly configured in the Azure App Service
- **Resource Provisioning Order**: Understanding the dependencies between resources and the correct sequence for manual deployment
- **Documentation Overload**: Azure documentation is extensive but often too advanced for beginners, requiring significant time to filter through relevant information







  








