Phase 2: Containerization & Infrastructure as Code

## Live Deployed URL

*Live Application*: [Live link to myherraisehub website](https://herraisehub.azurewebsites.net/)

## Screenshots of Provisioned Resources

Below are screenshots of the resources I provisioned in Azure:

### Resource Group (HerRaise_RG)
[Resource Group](./docs/Screenshot%20(327).png)

### App Service (herraise-app)
[App services](./docs/Screenshot%20(328).png)

### Azure Container Registry (herraise)
[ACR](./docs/Screenshot%20(333).png)

*Screenshots are saved in the docs/screenshot/ folder in the repository.*

## Peer Review Pull Request

I have reviewed Abuk's work as my peer:

*Peer PR Review*: [Abuk pull review](https://github.com/AbukDuot/JobBridge/pull/17)

## Reflection on Challenges

### Infrastructure as Code Challenges
- *Azure Subscription Access*: As someone new to Azure, getting access to a subscription was difficult and understanding the billing/credit system was confusing
- *Azure Portal Navigation*: The Azure portal has so many services and options that it was overwhelming to navigate and find the right resources
- *Resource Dependencies*: Managing the correct order of resource creation, especially with networking and database connections was challenging
- *Learning Resources*: Had to rely heavily on teacher guidance and YouTube tutorials to understand Azure concepts, but finding clear, beginner-friendly tutorials was time-consuming

### Manual Deployment Process Challenges
- *Azure Interface Complexity*: The Azure portal interface has multiple access points and menus, making it hard to locate specific configuration settings
- *Container Registry Authentication*: Setting up proper authentication between Azure Container Registry and App Service
- *Environment Variable Configuration*: Ensuring all necessary environment variables were properly configured in the Azure App Service
- *Resource Provisioning Order*: Understanding the dependencies between resources and the correct sequence for manual deployment
- *Documentation Overload*: Azure documentation is extensive but often too advanced for beginners, requiring significant time to filter through relevant information











  








