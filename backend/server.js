const express = require('express');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.static(path.join(__dirname, '../frontend')));

// Basic route
app.get('/api', (req, res) => {
  res.json({ 
    message: 'HerRaise API - Empowering South Sudanese Girls',
    status: 'Server running successfully'
  });
});

// Health check endpoint
app.get('/api/health', (req, res) => {
  res.json({ status: 'OK', timestamp: new Date().toISOString() });
});

// Serve frontend at root
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../frontend/index.html'));
});

// Start server
if (require.main === module) {
  app.listen(PORT, () => {
    console.log(`HerRaise server running on port ${PORT}`);
  });
}

module.exports = app;
