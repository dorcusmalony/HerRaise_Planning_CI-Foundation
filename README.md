# HerRaise - Mentorship & Empowerment Platform MVP

## Project Overview
HerRaise is a web platform focused on empowering girls and young women in South Sudan (ages 10-28) through mentorship, inspirational stories, and community support. This repository contains the foundational MVP version.

**Note**: This is a baseline/proof-of-concept version focused on demonstrating professional development practices, CI/CD setup, containerization, and Infrastructure as Code rather than a complete application.

## Target Users
- **Primary**: South Sudanese girls aged 10-28 (students, young professionals, those seeking support)
- **Secondary**: Admins/mentorship coordinators

## Project Management
- **Planning Board**:  GitHub Projects board created with detailed User Stories
- **Issue Tracking**:  Issues created for all milestones and current sprint tasks
- **Workflow**:  Active task tracking from "To Do" → "In Progress" → "Done"
- **Milestones**: 

  -  Phase 1: Foundation & CI Setup
  -  Phase 2: Containerization & Infrastructure as Code (Current)
  -  Phase 3: Continuous Deployment
  -  Phase 4: Monitoring & Security

  -  Phase 1: Foundation & CI Setup
  - Phase 2: Containerization & Infrastructure as Code (Current)
  - Phase 3: Continuous Deployment
  - Phase 4: Monitoring & Security


## Repository Security
- **Branch Protection**: Main branch requires PR + 1 reviewer + CI checks
- **Workflow**: All changes via Pull Requests from develop/feature branches
- **Code Reviews**: Mandatory reviewer approval before merge

## Tech Stack
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Node.js + Express.js
- **Database**: PostgreSQL
- **Testing**: Jest + Supertest
- **Containerization**: Docker & Docker Compose
- **Infrastructure**: Terraform (Azure)
- **CI/CD**: GitHub Actions (automated linting + testing on PRs)

## Project Structure
```
HerRaise_Planning_CI-Foundation/
├── frontend/          # Client-side code
├── backend/           # Server-side API
├── database/          # Database scripts and migrations
├── tests/             # Unit and integration tests
├── terraform/         # Infrastructure as Code
├── scripts/           # Deployment scripts
├── .github/workflows/ # CI/CD pipeline
├── docker-compose.yml # Local development environment
├── Dockerfile         # Container configuration
└── docs/              # Documentation
```

## Getting Started

### Prerequisites
- Node.js 18+
- Docker & Docker Compose
- Azure CLI (for cloud deployment)
- Terraform (for infrastructure)

### Local Development with Docker

1. **Clone the repository**
```bash
git clone <repository-url>
cd HerRaise_Planning_CI-Foundation
```

2. **Start with Docker Compose**
```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f app

# Stop services
docker-compose down
```

3. **Access the application**
- Application: http://localhost:3000
- API: http://localhost:3000/api
- Database: localhost:5432

### Traditional Development Setup

```bash
# Install dependencies
npm install

# Start PostgreSQL (if not using Docker)
# Configure DATABASE_URL in .env

# Run tests
npm test

# Start development server
npm run dev
```

### Docker Commands

```bash
# Build production image
docker build -t herraise-app .

# Run container
docker run -p 3000:3000 herraise-app

# Build and run with docker-compose
docker-compose up --build
```

## Infrastructure Deployment

### Prerequisites
- Azure Account with configured credentials
- Terraform installed

### Deploy Infrastructure

1. **Initialize Terraform**
```bash
cd terraform
terraform init
```

2. **Plan deployment**
```bash
terraform plan
```

3. **Apply infrastructure**
```bash
terraform apply
```

4. **Deploy application**
```bash
# Make script executable
chmod +x scripts/deploy.sh

# Run deployment
./scripts/deploy.sh
```

### Infrastructure Components
- **Virtual Network**: Custom VNet with subnets
- **ACR**: Azure Container Registry for Docker images
- **App Service**: Containerized web application hosting
- **PostgreSQL**: Azure Database for PostgreSQL
- **Networking**: Virtual network integration

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
```

## CI/CD Pipeline
- **Triggers**: Automatic on Pull Requests to main
- **Checks**: ESLint, Prettier, Jest unit tests, Docker build
- **Quality Gates**: All checks must pass before merge allowed

- **Quality Gates**: All checks must pass before merging is allowed
 ea33925c131ac0a8e254adffe5ae0f9b44d65fcd
- **Status**: Configured and enforcing code quality

## Contributing
This project follows professional development practices with:
- Branch protection on main
- Required PR reviews
- Automated CI checks
- Code quality standards
- Containerized development environment

## Vision
Building a platform that will provide long-term impact by supporting South Sudanese girls through mentorship and community empowerment.
Building a platform that will provide long-term impact by supporting South Sudanese girls through mentorship and community empowerment.












