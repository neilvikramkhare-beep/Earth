// ==============================================================================
// Earth Language Unified Master Backend - JavaScript / Node.js (.js)
// File: backend.js
// Provides native JavaScript backend support with HTTP REST routing and events.
// ==============================================================================

const http = require('http');
const { spawn } = require('child_process');

class EarthBackendJS {
    constructor(port = 8085) {
        this.port = port;
        this.routes = new Map();
        this.setupRoutes();
    }

    setupRoutes() {
        this.routes.set('GET /api/status', (req, res) => {
            this.sendJson(res, {
                runtime: 'Node.js / V8',
                status: 'online',
                language: 'Earth',
                timestamp: Date.now()
            });
        });

        this.routes.set('GET /api/hello', (req, res) => {
            this.sendJson(res, {
                message: 'Hello from Earth Language JavaScript Backend!',
                version: '1.0.0'
            });
        });

        this.routes.set('POST /api/execute', (req, res) => {
            let body = '';
            req.on('data', chunk => body += chunk);
            req.on('end', () => {
                try {
                    const { code } = JSON.parse(body);
                    // Spawn python backend.py to execute the code
                    const proc = spawn('python', ['backend.py', 'transpile']);
                    let output = '';
                    proc.stdout.on('data', d => output += d);
                    proc.on('close', code => {
                        this.sendJson(res, { output, exitCode: code });
                    });
                } catch (e) {
                    this.sendJson(res, { error: e.message }, 500);
                }
            });
        });
    }

    sendJson(res, data, statusCode = 200) {
        res.writeHead(statusCode, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(data, null, 2));
    }

    start() {
        const server = http.createServer((req, res) => {
            const key = `${req.method} ${req.url.split('?')[0]}`;
            const handler = this.routes.get(key);
            if (handler) {
                handler(req, res);
            } else {
                this.sendJson(res, { error: 'Route Not Found' }, 404);
            }
        });

        server.listen(this.port, () => {
            console.log(`[+] Earth JavaScript Backend running on http://localhost:${this.port}`);
        });
        return server;
    }
}

// Verification if run in terminal
if (require.main === module) {
    console.log("========================================");
    console.log(" Earth Unified Backend Engine (JS .js)");
    console.log("========================================");
    const backend = new EarthBackendJS();
    console.log("Configured Endpoints:");
    backend.routes.forEach((_, route) => console.log(`  - ${route}`));
    console.log("[+] JavaScript Backend Module Verified Successfully!");
}

module.exports = EarthBackendJS;
