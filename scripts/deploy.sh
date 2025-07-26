#!/bin/bash

# HerRaise Deployment Script
set -e

PROJECT_NAME="herraise"
REGISTRY_NAME="herraise"
RESOURCE_GROUP="HerRaise_RG"
ENVIRONMENT="dev"

echo " Starting HerRaise deployment..."

# Build Docker image
echo " Building Docker image..."
docker build -t ${PROJECT_NAME}-app:latest .

# Get ACR login server
ACR_LOGIN_SERVER="${REGISTRY_NAME}.azurecr.io"

# Login to ACR
echo "🔐 Logging into Azure Container Registry..."
az acr login --name ${REGISTRY_NAME}

# Tag and push image
echo "📤 Pushing image to ACR..."
docker tag ${PROJECT_NAME}-app:latest ${ACR_LOGIN_SERVER}/${PROJECT_NAME}-app:latest
docker push ${ACR_LOGIN_SERVER}/${PROJECT_NAME}-app:latest

# Optional: Restart App Service to pull latest image
echo "🔄 Restarting App Service..."
az webapp restart --name ${PROJECT_NAME}-app --resource-group ${RESOURCE_GROUP}

echo "✅ Deployment complete!"
echo "📄 Check your App Service at: https://${PROJECT_NAME}-app.azurewebsites.net"
