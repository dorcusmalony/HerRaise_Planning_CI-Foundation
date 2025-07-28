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

 **Live Application**: [Live link to myherraisehub website](https://herraisehub.azurewebsites.net/
 )



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

I have reviewed a abuk work as my peer 

**Peer PR Review**: [Abuk pull review](https://github.com/AbukDuot/JobBridge/pull/17)



## 4. Reflection on Challenges

### Infrastructure as Code Challenges
- **Azure Provider Learning**: Acess  Azure Terraform providers was not easy as and it  required understanding different resource structures
- **Resource Dependencies**: Managing the correct order of resource creation, especially with networking and database connections was that easy 
- **Terraform State**: Understanding how to properly manage Terraform state for team collaboration

