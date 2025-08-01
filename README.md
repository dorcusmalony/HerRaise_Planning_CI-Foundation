# HerRaise - Mentorship & Empowerment Platform

> Empowering South Sudanese girls and young women (ages 10-28) through digital mentorship, inspirational storytelling, and community support.

## Overview

HerRaise is a web-based mentorship platform designed to address the unique challenges faced by girls and young women in South Sudan. This MVP demonstrates professional software development practices including CI/CD, containerization, and Infrastructure as Code.

**Live Demo**: https://herraisehub.azurewebsites.net

## Target Impact

- **Primary Users**: South Sudanese girls aged 10-28 seeking mentorship and educational resources
- **Secondary Users**: Mentors, coordinators, and community leaders  
- **Mission**: Bridge the opportunity gap through accessible digital empowerment tools

## Technical Architecture

```
Frontend (Static) → Node.js API → PostgreSQL Database
       ↓                ↓                ↓
     Docker           Docker           Docker
       ↓                ↓                ↓
Azure App Service → Container Registry → Azure Database
```

### Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | HTML, CSS, JavaScript |
| **Backend** | Node.js + Express.js |
| **Database** | PostgreSQL |
| **Testing** | Jest + Supertest |
| **Containerization** | Docker + Docker Compose |
| **Infrastructure** | Terraform (Azure) |
| **CI/CD** | GitHub Actions |

## Quick Start

### Development Environment

```bash
# Clone and start with Docker
git clone <repository-url>
cd HerRaise_Planning_CI-Foundation
docker-compose up -d

# Access application
open http://localhost:3000
```

### Production Deployment

```bash
# 1. Provision Azure infrastructure
cd terraform && terraform init && terraform apply

# 2. Build and deploy to Azure
chmod +x scripts/deploy.sh && ./scripts/deploy.sh
```

## Development Milestones

- [x] **Phase 1**: Foundation & CI Setup
- [ ] **Phase 2**: Containerization & Infrastructure as Code
- [ ] **Phase 3**: Continuous Deployment Pipeline
- [ ] **Phase 4**: Monitoring & Security Hardening

## Repository Structure

```
├── frontend/              # Client-side application
├── backend/               # REST API server
├── database/              # Schema & migrations
├── terraform/             # Infrastructure as Code
├── .github/workflows/     # CI/CD automation
├── docker-compose.yml     # Local development
└── Dockerfile            # Production container
```

## Contributing

### Workflow

1. Create feature branch from `develop`
2. Implement with test coverage
3. Submit Pull Request to `main`
4. Pass CI checks + peer review
5. Deploy via automated pipeline

### Code Quality Standards

- ESLint + Prettier formatting
- Jest unit tests (>80% coverage)
- Docker build verification
- Security vulnerability scanning

## Environment Configuration

```bash
# Local development (.env)
NODE_ENV=development
PORT=3000
DATABASE_URL=postgresql://herraise_user:herraise_password@localhost:5432/herraise_db

# Production (Azure - managed via Terraform)
NODE_ENV=production
DATABASE_URL=${azurerm_postgresql_flexible_server.connection_string}
AZURE_CONTAINER_REGISTRY=${azurerm_container_registry.login_server}
```

## Infrastructure Components

| Resource | Purpose | Azure Service |
|----------|---------|---------------|
| **Virtual Network** | Secure networking | Azure Virtual Network with subnets |
| **Container Registry** | Docker image storage | Azure Container Registry (ACR) |
| **App Service** | Web application hosting | Azure App Service (Linux containers) |
| **PostgreSQL** | Database service | Azure Database for PostgreSQL Flexible Server |
| **Resource Group** | Resource management | Azure Resource Group |

## Security Features

- Branch protection on `main` branch
- Mandatory code reviews
- Comprehensive dependency vulnerability scanning
- Container image vulnerability scanning with Trivy
- Environment variable encryption
- HTTPS enforcement in production
- Automated security fix attempts in CI pipeline

## Support & Documentation

- **Issues**: Report bugs via GitHub Issues
- **Discussions**: Community support via GitHub Discussions
- **Documentation**: `/docs` directory for detailed guides

---

**Vision**: Building sustainable pathways for South Sudanese girls to overcome barriers and achieve their full potential through technology-enabled mentorship and community support.


**License**: MIT | **Team**: HerRaise Development Team


**License**: MIT | **Team**: HerRaise Development Team
./scripts/deploy.sh
```

### Azure Infrastructure Components
- **Resource Group**: Organized resource management
- **Virtual Network**: Custom VNet with secure subnets
- **ACR**: Azure Container Registry for Docker images
- **App Service**: Azure App Service with Linux container runtime
- **PostgreSQL**: Azure Database for PostgreSQL Flexible Server
- **Networking**: VNet integration for secure communication

## Development Workflow
1. Create feature branch from develop
2. Implement feature with tests
3. Test locally with Docker Compose
4. Create Pull Request to main
5. Wait for CI checks and reviewer approval
6. Merge after all requirements met

## Environment Variables
Create `.env` file for local development:
```
NODE_ENV=development
PORT=3000
DATABASE_URL=postgresql://herraise_user:herraise_password@localhost:5432/herraise_db

# Azure-specific variables (set via Terraform in production)
AZURE_RESOURCE_GROUP=herraise-rg
AZURE_CONTAINER_REGISTRY=herraiseacr.azurecr.io
```

## CI/CD Pipeline
- **Platform**: GitHub Actions with Azure integration
- **Triggers**: Automatic on Pull Requests to main
- **Checks**: ESLint, Prettier, Jest unit tests, Docker build
- **Deployment**: Automated Azure App Service deployment
- **Quality Gates**: All checks must pass before merging is allowed

## Pipeline Testing Protocol

### Immediate Next Steps
```bash
# 1. Create test branch
git checkout -b test-pipeline-fix
git add .
git commit -m "test: validate CI pipeline after fixes"
git push origin test-pipeline-fix

# 2. Create Pull Request via GitHub UI
# 3. Monitor GitHub Actions tab for pipeline execution
# 4. Verify all checks show green checkmarks
# 5. Test merge capability


### What to Watch For
- ✅ **Linting**: ESLint checks pass without errors
- ✅ **Formatting**: Prettier validation succeeds
- ✅ **Testing**: Jest unit tests execute successfully
- ✅ **Build**: Docker container builds without issues
- ✅ **Security**: Vulnerability scans complete (may have warnings)
- ✅ **Merge**: "Merge pull request" button becomes enabled

### If Pipeline Fails Again
```bash
# Check specific workflow logs in GitHub Actions
# Fix any remaining issues
# Push new commit to same branch
# Pipeline will re-run automatically
```

### Managing Failed Pull Requests

**Option 1: Reuse the Failed PR (Recommended)**
```bash
# Switch to the failed PR branch
git checkout <failed-branch-name>
# Make your fixes
git add .
git commit -m "fix: resolve CI pipeline issues"
git push origin <failed-branch-name>
# Pipeline automatically re-runs on the same PR
```

**Option 2: Create Fresh Test PR**
```bash
# Create new test branch from main
git checkout main
git pull origin main
git checkout -b test-pipeline-validation-v2
# Make a small change (like updating this README)
git add .
git commit -m "test: validate CI pipeline after fixes"
git push origin test-pipeline-validation-v2
# Create new PR via GitHub UI
```

**Recommendation**: Reuse your failed PR by pushing new commits to fix the issues. This maintains the history and shows the progression from failure to success.

## Next Testing Steps

### Phase 1 Validation Checklist
- [ ] **CI Pipeline Test**: Create test PR to verify all GitHub Actions workflows
- [ ] **Local Docker Test**: Ensure `docker-compose up -d` works completely
- [ ] **Database Connectivity**: Validate PostgreSQL connection and schema
- [ ] **API Health Check**: Test `/api/health` endpoint functionality
- [ ] **Frontend Integration**: Verify frontend serves and connects to backend

### Phase 2 Preparation Tests
- [ ] **Terraform Validation**: Run `terraform plan` to verify infrastructure code
- [ ] **Container Registry**: Test Azure ACR authentication and push
- [ ] **Azure App Service**: Validate container deployment capability
- [ ] **Network Security**: Test VNet integration and subnet isolation
- [ ] **Database Migration**: Verify PostgreSQL schema deployment

### Testing Commands

```bash
# Local environment validation
docker-compose up -d
curl http://localhost:3000/api/health
npm test

# Infrastructure dry-run
cd terraform
terraform init
terraform plan

# Container build test
docker build -t herraise:test .
docker run -p 3000:3000 herraise:test

# Security audit
npm audit
docker scan herraise:test (if available)
```

### Expected Outcomes
| Test | Success Criteria |
|------|------------------|
| **CI Pipeline** | All GitHub Actions pass green |
| **Local Docker** | App accessible at localhost:3000 |
| **Database** | Connection successful, tables created |
| **Terraform** | Plan executes without errors |
| **Container** | Image builds and runs successfully |

## Troubleshooting Common Issues

### Docker Compose Issues
```bash
# Reset containers
docker-compose down -v
docker-compose up -d --build

# Check logs
docker-compose logs backend
docker-compose logs database
```

### Azure Terraform Issues
```bash
# Azure CLI login
az login
az account set --subscription <subscription-id>

# Terraform debugging
terraform plan -detailed-exitcode
terraform validate
```

## Vision
Building a platform that will provide long-term impact by supporting South Sudanese girls through mentorship and community empowerment.

## Live Environments

- **Staging Environment**: https://herraise-app-staging.azurewebsites.net
- **Production Environment**: https://herraisehub.azurewebsites.net

## Monitoring Dashboard

- **Application Insights**: [Azure Portal - HerRaise Monitoring](https://portal.azure.com/#@/resource/subscriptions/{subscription-id}/resourceGroups/HerRaise_RG/providers/microsoft.insights/components/herraise-insights/overview)
- **Operational Alarms**: Configured for response time > 5 seconds














#   C D   P i p e l i n e   T e s t 
 
 






