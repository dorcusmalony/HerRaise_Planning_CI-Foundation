#!/bin/bash

# HerRaise Build Script
set -e

echo " HerRaise Build Process Starting..."

# Clean previous builds
echo " Cleaning previous builds..."
rm -rf dist
mkdir -p dist

# Copy application files
echo " Copying application files..."
cp -r backend dist/
cp -r frontend dist/
cp package*.json dist/

# Copy additional files if they exist
if [ -f ".env.example" ]; then
    cp .env.example dist/
fi

if [ -d "docs" ]; then
    cp -r docs dist/
fi

# Set production environment
echo " Setting production environment..."
cd dist
echo "NODE_ENV=production" > .env

# Install production dependencies only
echo " Installing production dependencies..."
npm ci --only=production --silent

# Create build metadata
echo " Creating build metadata..."
cat > build-info.json << EOF
{
  "buildTime": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "gitCommit": "${GITHUB_SHA:-$(git rev-parse HEAD 2>/dev/null || echo 'unknown')}",
  "buildNumber": "${GITHUB_RUN_NUMBER:-local}",
  "nodeVersion": "$(node --version)",
  "npmVersion": "$(npm --version)"
}
EOF

cd ..

# Validate build
echo " Validating build..."
test -f dist/backend/server.js || (echo " Server file missing" && exit 1)
test -f dist/frontend/index.html || (echo " Frontend index missing" && exit 1)
test -f dist/package.json || (echo " Package.json missing" && exit 1)

echo " Build completed successfully!"
echo " Build size: $(du -sh dist | cut -f1)"
