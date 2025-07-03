# HerRaise - Mentorship & Empowerment Platform MVP

## Project Overview
HerRaise is a web platform focused on empowering girls and young women in South Sudan (ages 10-28) through mentorship, inspirational stories, and community support. This repository contains the foundational MVP version.

**Note**: This is a baseline/proof-of-concept version focused on demonstrating professional development practices, CI/CD setup, and core functionality rather than a complete application.

## Target Users
- **Primary**: South Sudanese girls aged 10-28 (students, young professionals, those seeking support)
- **Secondary**: Admins/mentorship coordinators

## Project Management
- **Planning Board**: ✅ GitHub Projects board created with detailed User Stories
- **Issue Tracking**: ✅ Issues created for all milestones and current sprint tasks
- **Workflow**: ✅ Active task tracking from "To Do" → "In Progress" → "Done"
- **Milestones**: 
  - ✅ Phase 1: Foundation & CI Setup (Current)
  - 📋 Phase 2: Containerization 
  - 📋 Phase 3: Infrastructure as Code
  - 📋 Phase 4: Continuous Deployment
  - 📋 Phase 5: Monitoring & Security

## Repository Security
- **Branch Protection**: Main branch requires PR + 1 reviewer + CI checks
- **Workflow**: All changes via Pull Requests from develop/feature branches
- **Code Reviews**: Mandatory reviewer approval before merge

## Baseline Features (Current Sprint)
**MVP Scope**: Demonstrating core functionality and professional practices
- [ ] User Authentication (Register/Login) - Basic implementation
- [ ] Story Submission Form - Simple CRUD operations
- [ ] Basic Story Display - Database integration demo
- [ ] Simple Admin Dashboard - Role-based access
- [ ] Discussion Forum (Basic) - Community feature foundation

**Success Criteria**: Working CI pipeline + basic CRUD + tests, not feature completeness

## Tech Stack
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Node.js + Express.js
- **Database**: PostgreSQL
- **Testing**: Jest + Supertest
- **CI/CD**: GitHub Actions (automated linting + testing on PRs)

## Project Structure
```
HerRaise_Planning_CI-Foundation/
├── frontend/          # Client-side code
├── backend/           # Server-side API
├── database/          # Database scripts and migrations
├── tests/             # Unit and integration tests
├── .github/workflows/ # CI/CD pipeline
└── docs/              # Documentation
```

## CI/CD Pipeline
- **Triggers**: Automatic on Pull Requests to main
- **Checks**: ESLint, Prettier, Jest unit tests
- **Quality Gates**: All checks must pass before merge allowed
- **Status**: ✅ Configured and enforcing code quality

## Getting Started
```bash
# Initialize your Git repository and create a main and develop branch.

# A Pull Request before merging.
# Install dependencies
npm install

# Run tests
npm test

# Start development server
npm run dev
```

## Development Workflow
1. Create feature branch from develop
2. Implement feature with tests
3. Create Pull Request to main
4. Wait for CI checks and reviewer approval
5. Merge after all requirements met

## Development Roadmap
- **Phase 1**: Foundation & CI Setup ✅ (Current)
- **Phase 2**: Containerization
- **Phase 3**: Infrastructure as Code
- **Phase 4**: Continuous Deployment
- **Phase 5**: Monitoring & Security

## Contributing
This project follows professional development practices with:
- Branch protection on main
- Required PR reviews
- Automated CI checks
- Code quality standards

## Vision
Building a platform that will provide long-term impact by supporting South Sudanese girls through mentorship and community empowerment.
