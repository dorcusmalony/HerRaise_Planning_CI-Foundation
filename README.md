# HerRaise - Mentorship & Empowerment Platform

[Vedo_demo](https://herraisehub-fgd0dfawa0bmhxeh.southafricanorth-01.azurewebsites.)

> Empowering South Sudanese girls and young women (ages 10-28) through digital mentorship, inspirational storytelling, and community support.

## Overview

HerRaise is a web-based mentorship platform designed to address the unique challenges faced by girls and young women in South Sudan. This MVP demonstrates professional software development practices including CI/CD, containerization, and Infrastructure as Code.

## Target Impact

- **Primary Users**: South Sudanese girls aged 10-28 seeking mentorship and educational resources
- **Secondary Users**: Mentors, coordinators, and community leaders  
- **Mission**: Bridge the opportunity gap through accessible digital empowerment tools

## Technical Architecture

```
Frontend (Static HTML/CSS/JS)
        ↓
Docker Container
        ↓
Azure App Service (Linux containers)
```

### Tech Stack

| Layer        | Technology           |
|--------------|---------------------|
| **Frontend** | HTML, CSS, JavaScript |
| **Containerization** | Docker |
| **Infrastructure** | Terraform (Azure) |
| **CI/CD**    | GitHub Actions      |
| **Security** | Trivy, npm audit    |

### Production Deployment

```bash
# 1. Provision Azure infrastructure
cd terraform && terraform init && terraform apply

# 2. Build and deploy to Azure
chmod +x scripts/deploy.sh && ./scripts/deploy.sh
```

## Development Milestones

- [x] **Phase 1**: Foundation & CI Setup
- [x] **Phase 2**: Containerization & Infrastructure as Code  
- [x] **Phase 3**: Continuous Deployment Pipeline
- [x] **Phase 4**: Monitoring & Security Hardening

## Live Environments

| Environment   | URL                                                                 | Purpose             | Auto-Deploy     |
|---------------|---------------------------------------------------------------------|---------------------|-----------------|
| **Production**| [herraisehub.azurewebsites.net](https://herraisehub-fgd0dfawa0bmhxeh.southafricanorth-01.azurewebsites.net/) | Live platform       | `main` branch   |
| **Staging**   | [herraise-app-staging-fvgkc9cyatfyfehm.southafricanorth-01.azurewebsites.net](https://herraise-app-staging-fvgkc9cyatfyfehm.southafricanorth-01.azurewebsites.net/) | Testing & validation | `develop` branch |



## Contributing

### Workflow

1. Create feature branch from `develop`
2. Implement and test your changes
3. Submit Pull Request to `develop`
4. Pass CI checks + peer review
5. Merge to `main` for production deployment

### Code Quality Standards

- ESLint + Prettier formatting
- Automated lint/test steps in CI
- Docker build verification
- Security vulnerability scanning (Trivy, npm audit)

## Environment Configuration

No backend or database configuration required for static frontend.

## Infrastructure Components

| Resource            | Purpose                   | Azure Service                |
|---------------------|---------------------------|------------------------------|
| **App Service**     | Web application hosting   | Azure App Service (Linux)    |
| **Container Registry** | Docker image storage   | Azure Container Registry (ACR)|
| **Resource Group**  | Resource management       | Azure Resource Group         |

## Security & DevSecOps

### Automated Security Scanning
- ✅ **Dependency Vulnerability Scanning** - npm audit
- ✅ **Container Image Security** - Trivy scanning
- ✅ **Infrastructure Security** - Terraform security validation

### Security Policies
- Branch protection on `main` branch with required reviews
- Mandatory security scans before deployment
- HTTPS enforcement in all environments
- Automated security reporting and artifact retention

## Monitoring & Observability

### Application Monitoring
- **Application Insights** - Real-time performance monitoring
- **Health Checks** - Automated endpoint monitoring

### Operational Alarms
- **High Response Time Alert** - Triggers when avg response > 5 seconds
- **Low Availability Alert** - Monitors application uptime
- **High Error Rate Alert** - Detects elevated 5xx error rates

## Support & Documentation

- **Issues**: Report bugs via GitHub Issues
- **Discussions**: Community support via GitHub Discussions
- **Documentation**: `/docs` directory for detailed guides

---

**License**: MIT | **Team**: HerRaise Development Team

### Deployment Strategy
- **Staging**: Auto-deploy on `develop` branch push
- **Production**: Auto-deploy on `main` branch push
- **Quality Gates**: All security and test checks must pass
- **Rollback**: Automated rollback on health check failures

### Pipeline Features
- ✅ **Automated Testing** - Lint/test steps
- ✅ **Code Quality** - ESLint and formatting validation
- ✅ **Security Scanning** - Multi-layer vulnerability detection
- ✅ **Container Security** - Image vulnerability scanning
- ✅ **Infrastructure Validation** - Terraform plan verification
- ✅ **Health Monitoring** - Post-deployment validation
- ✅ **Documentation Updates** - Automated CHANGELOG and README updates

## Monitoring Dashboard

- **Application Insights**: [Azure Portal - HerRaise Monitoring](https://portal.azure.com/#@adichdorcusoutlook.onmicrosoft.com/resource/subscriptions/f2b10cdf-8f93-48de-a471-6a3de572f857/resourceGroups/HerRaise_RG/providers/microsoft.insights/components/herraise-app-staging202508061901/overview)
- **Operational Alarms**: Configured for response time > 5 seconds
