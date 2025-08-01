FROM node:20-alpine AS base

WORKDIR /app

# Copy built application from dist directory
COPY dist/package*.json ./
RUN npm ci --only=production && npm cache clean --force

FROM base AS production
COPY dist/backend/ ./backend/
COPY dist/frontend/ ./frontend/
COPY dist/package*.json ./

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nodeuser -u 1001
RUN chown -R nodeuser:nodejs /app
USER nodeuser

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/api/health || exit 1

CMD ["npm", "start"]