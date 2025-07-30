# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.0] - 2025-07-30

### Added
- Full Continuous Deployment pipeline with GitHub Actions
- Automated security scanning with Trivy and npm audit
- Staging environment deployment on develop branch
- Production deployment with manual approval on main branch
- Container image vulnerability scanning
- Automated testing suite execution in pipeline
- Build artifact management

### Changed
- Extended existing CI pipeline to include full CD capabilities
- Enhanced security with comprehensive vulnerability scanning
- Improved deployment reliability with automated health checks
- Updated Docker configuration for production optimization
- Upgraded to Node.js 20 LTS for better performance and security

### Security
- Added container image security scanning with Trivy
- Implemented dependency vulnerability checks with npm audit
- Configured automated security audit in deployment pipeline
- Enhanced Docker security with non-root user

## [1.1.0] - 2025-07-20

### Added
- Containerized application with Docker multi-stage build
- Azure Container Registry integration
- Infrastructure as Code with Terraform
- Manual deployment to Azure App Service
- PostgreSQL database integration

### Changed
- Migrated from basic setup to containerized architecture

## [1.0.0] - 2025-07-15

### Added
- Initial HerRaise application release
- Basic CI pipeline with GitHub Actions
- Unit tests with Jest and Supertest
- ESLint code quality checks
- Node.js Express backend
- Static HTML frontend
- Health check endpoints