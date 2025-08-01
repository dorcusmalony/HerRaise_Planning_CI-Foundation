# HerRaise Monitoring and Observability Setup

## Azure Application Insights Configuration

### 1. Application Performance Monitoring
```bash
# Enable Application Insights on Azure Web Apps
az webapp config appsettings set \
  --name herraisehub \
  --resource-group HerRaise_RG \
  --settings APPINSIGHTS_INSTRUMENTATIONKEY="${INSTRUMENTATION_KEY}"

az webapp config appsettings set \
  --name herraise-app-staging \
  --resource-group HerRaise_RG \
  --settings APPINSIGHTS_INSTRUMENTATIONKEY="${INSTRUMENTATION_KEY}"
```

### 2. Monitoring Dashboard Components
- **Response Time Metrics**: Average response time tracking
- **Error Rate Monitoring**: HTTP 4xx/5xx error tracking
- **Availability Monitoring**: Uptime percentage tracking
- **Resource Utilization**: CPU, Memory, Network usage

### 3. Operational Alarms Configuration

#### High Error Rate Alert
```json
{
  "name": "HerRaise-HighErrorRate",
  "condition": "requests/failed > 10% over 5 minutes",
  "action": "Email notification to dev team",
  "severity": "High"
}
```

#### Response Time Alert
```json
{
  "name": "HerRaise-SlowResponse",
  "condition": "avg(requests/duration) > 2000ms over 5 minutes",
  "action": "Email + SMS notification",
  "severity": "Medium"
}
```

#### Availability Alert
```json
{
  "name": "HerRaise-ServiceDown",
  "condition": "availability < 95% over 2 minutes",
  "action": "Immediate escalation",
  "severity": "Critical"
}
```

## Log Analytics Setup

### Application Logging
```javascript
// Enhanced logging in backend/server.js
const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.json()
  ),
  transports: [
    new winston.transports.Console(),
    new winston.transports.File({ filename: 'app.log' })
  ]
});

// Log all requests
app.use((req, res, next) => {
  logger.info('Request received', {
    method: req.method,
    url: req.url,
    userAgent: req.get('User-Agent'),
    timestamp: new Date().toISOString()
  });
  next();
});
```

## Monitoring Validation Commands

```bash
# Test health endpoint
curl https://herraisehub.azurewebsites.net/api/health

# Check application logs
az webapp log tail --name herraisehub --resource-group HerRaise_RG

# View metrics
az monitor metrics list \
  --resource /subscriptions/{subscription}/resourceGroups/HerRaise_RG/providers/Microsoft.Web/sites/herraisehub \
  --metric "Http2xx,Http4xx,Http5xx,ResponseTime"
```

## Dashboard Access URLs
- **Azure Portal**: https://portal.azure.com
- **Application Insights**: https://portal.azure.com/#@{tenant}/resource{resource-id}/overview
- **Log Analytics**: https://portal.azure.com/#@{tenant}/resource{workspace-id}/logs
