# GitHub Environment Setup for Manual Approval

## Required GitHub Environment Configuration

To enable manual approval for production deployments, you need to configure GitHub environments:

### 1. Create Production Environment

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Environments**
3. Click **New environment**
4. Name it `production`
5. Configure the following protection rules:

### 2. Protection Rules Configuration

#### Required Reviewers
- Add at least 1 required reviewer
- Select team members who should approve production deployments
# GitHub Environment Setup for Manual Approval

## Required GitHub Environment Configuration

To enable manual approval for production deployments, you need to configure GitHub environments:





#### Deployment Branches
- Select "Selected branches"
- Add rule for `main` branch only

#### Environment Secrets (if needed)
- Add any production-specific secrets
- These will be available only during production deployments

### 3. Staging Environment (Optional)

1. Create `staging` environment
2. Configure for `develop` branch
3. No manual approval required (auto-deploy)

## Manual Approval Workflow

When a commit is pushed to `main` branch:

1. Pipeline runs through: build → test → security → docker
2. **Manual approval required** before production deployment
3. Designated reviewers receive notification
4. Reviewer can:
   - **Approve**: Deployment proceeds to production
   - **Reject**: Deployment is blocked
   - **Comment**: Add notes for the deployment

## Environment URLs

The pipeline will automatically set environment URLs:
- **Staging**: https://herraise-app-staging-fvgkc9cyatfyfehm.southafricanorth-01.azurewebsites.net/
- **Production**: https://herraisehub-fgd0dfawa0bmhxeh.southafricanorth-01.azurewebsites.net/

## Monitoring Integration

After successful deployment, the pipeline will:
- Configure Application Insights monitoring
- Set up operational alarms
- Update CHANGELOG.md automatically
- Generate security compliance reports

## Testing the Approval Process

1. Make a small change to your code
2. Commit with conventional commit format: `feat: add new feature`
3. Push to `main` branch
4. Watch GitHub Actions - it will pause at production deployment
5. Go to **Actions** tab → Select the workflow run
6. Click **Review deployments** button
7. Select `production` environment and approve
8. Deployment will proceed automatically