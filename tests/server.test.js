// DELETE THIS FILE - No backend, no API tests needed.
const app = require('../backend/server');

describe('HerRaise API', () => {
  test('GET /api should return success message', async () => {
    const response = await request(app)
      .get('/api')
      .expect(200);
    
    expect(response.body.message).toContain('HerRaise API');
    expect(response.body.status).toBe('Server running successfully');
  });

  test('GET /api/health should return health status', async () => {
    const response = await request(app)
      .get('/api/health')
      .expect(200);
    
    expect(response.body.status).toBe('OK');
    expect(response.body.timestamp).toBeDefined();
  });

  test('Frontend should be served at root', async () => {
    const response = await request(app).get('/');
    
    expect(response.status).toBe(200);
    expect(response.type).toBe('text/html');
    expect(response.text).toContain('HerRaise');
    expect(response.text).toContain('Empowering');
  });
});
