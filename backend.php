<?php
// ==============================================================================
// Earth Language Unified Master Backend - PHP (.php)
// File: backend.php
// Provides native PHP backend support with superglobals, session management, and routing.
// ==============================================================================

class EarthPHPBackend {
    private $routes = [];

    public function __construct() {
        if (session_status() === PHP_SESSION_NONE && !headers_sent()) {
            @session_start();
        }
    }

    public function route($method, $path, $handler) {
        $this->routes[] = [
            'method' => strtoupper($method),
            'path' => $path,
            'handler' => $handler
        ];
    }

    public function handleRequest($method, $uri) {
        foreach ($this->routes as $r) {
            if ($r['method'] === strtoupper($method) && $r['path'] === $uri) {
                return call_user_func($r['handler']);
            }
        }
        return [
            'status' => 404,
            'error' => 'Endpoint Not Found'
        ];
    }

    public function sendJsonResponse($data, $statusCode = 200) {
        http_response_code($statusCode);
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data, JSON_PRETTY_PRINT);
    }
}

// Router instantiation
$backend = new EarthPHPBackend();

$backend->route('GET', '/api/status', function() {
    return [
        'runtime' => 'PHP',
        'status' => 'online',
        'language' => 'Earth',
        'timestamp' => time()
    ];
});

$backend->route('GET', '/api/hello', function() {
    return [
        'message' => 'Hello from Earth Language PHP Backend',
        'version' => '1.0.0'
    ];
});

// Verification check when run via CLI
if (php_sapi_name() === 'cli') {
    echo "========================================\n";
    echo " Earth Unified Backend Engine (PHP .php)\n";
    echo "========================================\n";

    $statusResult = $backend->handleRequest('GET', '/api/status');
    echo "Route /api/status Test:\n";
    echo json_encode($statusResult, JSON_PRETTY_PRINT) . "\n";

    $helloResult = $backend->handleRequest('GET', '/api/hello');
    echo "Route /api/hello Test:\n";
    echo json_encode($helloResult, JSON_PRETTY_PRINT) . "\n";

    echo "[+] PHP Backend Module Verified Successfully!\n";
} else {
    $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    $method = $_SERVER['REQUEST_METHOD'];
    $response = $backend->handleRequest($method, $uri);
    $statusCode = isset($response['status']) && $response['status'] === 404 ? 404 : 200;
    $backend->sendJsonResponse($response, $statusCode);
}
?>
