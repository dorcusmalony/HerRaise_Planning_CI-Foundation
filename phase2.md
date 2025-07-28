# Phase 2: Containerization & Infrastructure as Code

## Objectives
-  Containerize the HerRaise application
-  Define cloud infrastructure as code using Terraform
-  Perform manual cloud deployment
-  Conduct peer code review
-  Document the process and challenges

##  1. Live Deployed URL

Here is the public URL of my deployed application:

 **Live Application**: [https://herraise-app.azurewebsites.net](https://herraise-app.azurewebsites.net)

---

##  2. Screenshots of Provisioned Resources

Below are screenshots of the resources I provisioned in Azure:

###  Resource Group (HerRaise_RG)
[Resource Group](docs/screenshot(327).png)
###  App Service (herraise-app)
[App services](docs/screenshot(327).png)
###  Azure Container Registry (herraise)
[ACR](docs/screenshot(333).png)


*Screenshots are saved in the `docs/screenshot/` folder in the repository.*

---

##  3. Peer Review Pull Request

I have reviewed a peer's pull request as part of the assignment:

**Peer PR Review**: [To be updated with actual PR link]

---

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
terraform init
terraform plan
terraform apply

# Container deployment
./scripts/deploy.sh
```



##  Last Updated
**25 July** - Phase 2 Complete
