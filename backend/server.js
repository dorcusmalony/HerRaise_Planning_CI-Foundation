const express = require('express');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;
const startTime = new Date();

// Request logging middleware
app.use((req, res, next) => {
  const timestamp = new Date().toISOString();
  console.log(`[${timestamp}] ${req.method} ${req.url} - ${req.ip}`);
  next();
});

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.static(path.join(__dirname, '../frontend')));

// API routes
app.get('/api', (req, res) => {
  res.json({ 
    message: 'HerRaise API - Empowering South Sudanese Girls',
    status: 'Server running successfully',
    version: '1.0.0',
    uptime: Math.floor((Date.now() - startTime.getTime()) / 1000),
    environment: process.env.NODE_ENV || 'development',
    timestamp: new Date().toISOString()
  });
});

// Enhanced health check endpoint
app.get('/api/health', (req, res) => {
  const healthData = {
    status: 'OK',
    timestamp: new Date().toISOString(),
    uptime: Math.floor((Date.now() - startTime.getTime()) / 1000),
    version: '1.0.0',
    environment: process.env.NODE_ENV || 'development',
    memory: {
      used: Math.round(process.memoryUsage().heapUsed / 1024 / 1024),
      total: Math.round(process.memoryUsage().heapTotal / 1024 / 1024)
    },
    system: {
      platform: process.platform,
      nodeVersion: process.version,
      pid: process.pid
    }
  };
  
  console.log(`[${new Date().toISOString()}] Health check requested - Status: OK`);
  res.json(healthData);
});

// Mentorship API endpoints (MVP)
app.get('/api/mentorship', (req, res) => {
  res.json({
    message: 'Mentorship program information',
    programs: [
      {
        id: 1,
        title: 'Leadership Development',
        description: 'Develop leadership skills for community impact',
        duration: '6 months',
        status: 'active'
      },
      {
        id: 2,
        title: 'Educational Support',
        description: 'Academic guidance and educational resources',
        duration: '12 months',
        status: 'active'
      },
      {
        id: 3,
        title: 'Career Guidance',
        description: 'Professional development and career planning',
        duration: '9 months',
        status: 'active'
      }
    ],
    totalPrograms: 3,
    timestamp: new Date().toISOString()
  });
});

// Community API endpoint
app.get('/api/community', (req, res) => {
  res.json({
    message: 'Community engagement platform',
    stats: {
      activeMembers: 150,
      mentors: 25,
      successStories: 12,
      ongoingPrograms: 8
    },
    features: [
      'Peer-to-peer support',
      'Group mentoring sessions',
      'Success story sharing',
      'Resource library access'
    ],
    timestamp: new Date().toISOString()
  });
});

// System status endpoint for monitoring
app.get('/api/status', (req, res) => {
  const status = {
    service: 'HerRaise Platform',
    status: 'operational',
    version: '1.0.0',
    uptime: Math.floor((Date.now() - startTime.getTime()) / 1000),
    startTime: startTime.toISOString(),
    currentTime: new Date().toISOString(),
    environment: process.env.NODE_ENV || 'development',
    services: {
      api: 'healthy',
      frontend: 'healthy',
      database: 'not_configured' // Will be updated when DB is added
    },
    metrics: {
      memoryUsage: process.memoryUsage(),
      cpuUsage: process.cpuUsage()
    }
  };
  
  console.log(`[${new Date().toISOString()}] System status requested`);
  res.json(status);
});

// Serve frontend at root
app.get('/', (req, res) => {
  console.log(`[${new Date().toISOString()}] Frontend requested from ${req.ip}`);
  res.sendFile(path.join(__dirname, '../frontend/index.html'));
});

// 404 handler
app.use('*', (req, res) => {
  console.log(`[${new Date().toISOString()}] 404 - Route not found: ${req.method} ${req.originalUrl}`);
  res.status(404).json({
    error: 'Route not found',
    message: 'The requested endpoint does not exist',
    timestamp: new Date().toISOString()
  });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(`[${new Date().toISOString()}] Error:`, err.message);
  res.status(500).json({
    error: 'Internal server error',
    message: 'Something went wrong on our end',
    timestamp: new Date().toISOString()
  });
});

// Graceful shutdown handling
process.on('SIGTERM', () => {
  console.log(`[${new Date().toISOString()}] SIGTERM received, shutting down gracefully`);
  process.exit(0);
});

process.on('SIGINT', () => {
  console.log(`[${new Date().toISOString()}] SIGINT received, shutting down gracefully`);
  process.exit(0);
});

// Start server
if (require.main === module) {
  app.listen(PORT, () => {
    console.log(`[${new Date().toISOString()}] HerRaise server running on port ${PORT}`);
    console.log(`[${new Date().toISOString()}] Environment: ${process.env.NODE_ENV || 'development'}`);
    console.log(`[${new Date().toISOString()}] Health check: http://localhost:${PORT}/api/health`);
    console.log(`[${new Date().toISOString()}] Ready to empower South Sudanese girls!`);
  });
}

module.exports = app;
