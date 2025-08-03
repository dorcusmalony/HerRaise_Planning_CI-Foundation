#!/bin/bash

# HerRaise Build Script
set -e

echo " HerRaise Build Process Starting..."

# Clean previous builds
echo " Cleaning previous builds..."
rm -rf dist
mkdir -p dist

# Copy frontend application files only
echo " Copying frontend files..."
cp -r frontend dist/

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

# No backend dependencies to install
echo " Skipping backend dependency installation..."

# Create build metadata
echo " Creating build metadata..."
cat > build-info.json << EOF
{
  "buildTime": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "gitCommit": "${GITHUB_SHA:-$(git rev-parse HEAD 2>/dev/null || echo 'unknown')}",
  "buildNumber": "${GITHUB_RUN_NUMBER:-local}"
}
EOF

cd ..

# Validate build
echo " Validating build..."
test -f dist/frontend/index.html || (echo " Frontend index missing" && exit 1)

echo " Build completed successfully!"
echo " Build size: $(du -sh dist | cut -f1)"
test -f dist/package.json || (echo " Package.json missing" && exit 1)

echo " Build completed successfully!"
echo " Build size: $(du -sh dist | cut -f1)"
