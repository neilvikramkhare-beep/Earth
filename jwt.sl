// Earth Language JWT (JSON Web Token) Package
// File: jwt.sl

import json as std_json
import base64 as std_base64
import hmac as std_hmac
import hashlib as std_hashlib

define encode(payload, secret, algorithm="HS256"):
    header = {"alg": algorithm, "typ": "JWT"};
    header_b64 = std_base64.urlsafe_b64encode(std_json.dumps(header).encode("utf-8")).decode("utf-8").rstrip("=");
    payload_b64 = std_base64.urlsafe_b64encode(std_json.dumps(payload).encode("utf-8")).decode("utf-8").rstrip("=");
    
    msg = header_b64 + "." + payload_b64;
    signature = std_hmac.new(secret.encode("utf-8"), msg.encode("utf-8"), std_hashlib.sha256).digest();
    sig_b64 = std_base64.urlsafe_b64encode(signature).decode("utf-8").rstrip("=");
    
    return msg + "." + sig_b64;

define decode(token, secret, algorithms=["HS256"]):
    parts = token.split(".");
    if len(parts) != 3:
        return {"error": "Invalid token format"};
    
    msg = parts[0] + "." + parts[1];
    signature = std_hmac.new(secret.encode("utf-8"), msg.encode("utf-8"), std_hashlib.sha256).digest();
    sig_b64 = std_base64.urlsafe_b64encode(signature).decode("utf-8").rstrip("=");
    
    if sig_b64 != parts[2]:
        return {"error": "Invalid signature"};
        
    payload_padding = parts[1] + "=" * (4 - len(parts[1]) % 4);
    payload_json = std_base64.urlsafe_b64decode(payload_padding).decode("utf-8");
    
    return std_json.loads(payload_json);
