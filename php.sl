// PHP Superglobals Simulation
_GET = {};
_POST = {};
_SESSION = {};
_SERVER = {"REMOTE_ADDR": "127.0.0.1", "SERVER_SOFTWARE": "Earth/1.0"};

define session_start():
    _SESSION["started_at"] = "now";
