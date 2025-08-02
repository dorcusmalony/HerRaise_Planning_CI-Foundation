# 🚀 PIPELINE TEST GUIDE

## ✅ SETUP CONFIRMED
- GitHub environments: production & staging ✅
- Azure credentials configured ✅
- Pipeline file complete ✅

## 🧪 QUICK TEST SEQUENCE

### 1. Test Staging Deployment (develop branch)
```bash
# Create test branch from develop
git checkout develop
git pull origin develop
git checkout -b test-staging-deploy

# Make visible change
echo "<!-- Staging Test $(date) -->" >> frontend/index.html

# Commit and push
git add .
git commit -m "test: staging deployment verification"
git push origin test-staging-deploy

# Create PR to develop branch via GitHub UI
# Watch pipeline run - should auto-deploy to staging
```

### 2. Test Production Deployment (main branch)
```bash
# After staging test passes, merge to main
git checkout main
git pull origin main
git merge test-staging-deploy

# Push to main
git push origin main

# Watch for manual approval prompt in GitHub Actions
# Approve deployment when prompted
```

## 🎬 VIDEO DEMONSTRATION PREP

### Before Recording:
1. **Ensure both URLs are live**:
   - Staging: https://herraise-app-staging.azurewebsites.net
   - Production: https://herraisehub.azurewebsites.net

2. **Prepare your change**:
   - Plan a small, visible UI change
   - Have conventional commit message ready

3. **Open browser tabs**:
   - GitHub repository
   - GitHub Actions
   - Staging URL
   - Production URL

### Video Script (10 minutes max):

**Stage 1: Initial State (1 min)**
- "Hi, I'm [Your Name]"
- Show production app running
- Confirm it's functional

**Stage 2: Code Change (2 min)**
- Make visible change (e.g., update header text)
- Commit: `feat: update header for demo`
- Push to feature branch
- Show commit in GitHub

**Stage 3: Staging (3 min)**
- Create PR to develop
- Explain pipeline stages while running:
  - Build process
  - Testing procedures  
  - Security scanning
- Show change on staging URL

**Stage 4: Production (3 min)**
- Merge to main branch
- **Show manual approval step**
- Explain monitoring dashboard
- Approve deployment

**Stage 5: Verification (1 min)**
- Refresh production URL
- Show updated CHANGELOG.md
- Summary of automated deployment

## 🔍 TROUBLESHOOTING

### If Pipeline Fails:
- Check GitHub Actions logs
- Verify Azure credentials
- Ensure environments are configured
- Check resource group exists in Azure

### If URLs Don't Work:
- Verify Azure App Services are running
- Check container deployment status
- Review Azure logs

## ✅ FINAL CHECKLIST
- [ ] Pipeline runs without errors
- [ ] Manual approval appears for production
- [ ] Both URLs accessible
- [ ] CHANGELOG updates automatically
- [ ] Monitoring configured

**You're ready to record your video demonstration!**