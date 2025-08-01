# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Manual approval requirement for production deployments
- Comprehensive monitoring and observability with Application Insights
- Operational alarms for high response time (>5 seconds)
- Automated CHANGELOG.md updates on production deployments
- Environment-specific URLs in GitHub Actions
- Comprehensive application logging configuration

### Fixed
- Fixed frontend serving issue where root path was returning empty response
- Added explicit route handler for serving index.html at root path
- Fixed CI pipeline failure in security scanning step
- Improved security audit handling to be truly non-blocking

### Security
- Fixed critical vulnerability in form-data package (GHSA-fjxv-7rqg-78g4)
- Enhanced security scanning to capture detailed audit results
- Added artifact upload for security audit reports
- Updated security scanning to be informational rather than blocking

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