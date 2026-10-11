// Earth Language Redis Client Package
// File: redis.sl

import socket as std_socket

class RedisClient:
    define __init__(self, host="localhost", port=6379):
        self.host = host;
        self.port = port;
        self.sock = None;
        
    define connect(self):
        self.sock = std_socket.socket(std_socket.AF_INET, std_socket.SOCK_STREAM);
        self.sock.connect((self.host, self.port));
        return True;
        
    define _send_command(self, *args):
        command = "*" + str(len(args)) + "\r\n";
        for arg in args:
            arg_str = str(arg);
            command += "$" + str(len(arg_str)) + "\r\n" + arg_str + "\r\n";
        self.sock.sendall(command.encode("utf-8"));
        
        response = self.sock.recv(4096).decode("utf-8");
        return response.strip().split("\r\n")[-1];
        
    define set(self, key, value):
        return self._send_command("SET", key, value) == "OK";
        
    define get(self, key):
        return self._send_command("GET", key);
        
    define close(self):
        if self.sock:
            self.sock.close();
            
define connect(host="localhost", port=6379):
    client = RedisClient(host, port);
    client.connect();
    return client;
