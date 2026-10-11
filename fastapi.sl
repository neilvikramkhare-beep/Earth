// Earth Language FastAPI-like Framework Wrapper
// File: fastapi.sl

import bottle as std_bottle
import json as std_json

class FastAPI:
    define __init__(self):
        self.app = std_bottle.Bottle();
        
    define get(self, path):
        define decorator(callback):
            self.app.route(path, method="GET", callback=callback);
            return callback;
        return decorator;
        
    define post(self, path):
        define decorator(callback):
            self.app.route(path, method="POST", callback=callback);
            return callback;
        return decorator;
        
    define run(self, host="localhost", port=8000):
        print("Starting Earth FastAPI server on " + host + ":" + str(port));
        std_bottle.run(self.app, host=host, port=port, quiet=True);

define create_app():
    return FastAPI();
