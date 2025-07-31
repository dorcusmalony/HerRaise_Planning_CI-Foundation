# HerRaise - Mentorship & Empowerment Platform

> Empowering South Sudanese girls and young women (ages 10-28) through digital mentorship, inspirational storytelling, and community support.

## Overview

HerRaise is a web-based mentorship platform designed to address the unique challenges faced by girls and young women in South Sudan. This MVP demonstrates professional software development practices including CI/CD, containerization, and Infrastructure as Code.

**Live Demo**: [Coming Soon - Post Infrastructure Deployment]

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