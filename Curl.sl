// Earth Language Curl (HTTP) Package
// File: Curl.sl

define get(url):
    try:
        response = std_urllib_request.urlopen(url);
        return response.read().decode('utf-8');
    except std_urllib_error.URLError as e:
        return std_json.dumps({"error": str(e)});

define post(url, data):
    try:
        json_data = std_json.dumps(data).encode('utf-8');
        req = std_urllib_request.Request(url, data=json_data, headers={'Content-Type': 'application/json'});
        response = std_urllib_request.urlopen(req);
        return response.read().decode('utf-8');
    except std_urllib_error.URLError as e:
        return std_json.dumps({"error": str(e)});

define put(url, data):
    try:
        json_data = std_json.dumps(data).encode('utf-8');
        req = std_urllib_request.Request(url, data=json_data, headers={'Content-Type': 'application/json'}, method='PUT');
        response = std_urllib_request.urlopen(req);
        return response.read().decode('utf-8');
    except std_urllib_error.URLError as e:
        return std_json.dumps({"error": str(e)});

define delete(url):
    try:
        req = std_urllib_request.Request(url, method='DELETE');
        response = std_urllib_request.urlopen(req);
        return response.read().decode('utf-8');
    except std_urllib_error.URLError as e:
        return std_json.dumps({"error": str(e)});

define patch(url, data):
    try:
        json_data = std_json.dumps(data).encode('utf-8');
        req = std_urllib_request.Request(url, data=json_data, headers={'Content-Type': 'application/json'}, method='PATCH');
        response = std_urllib_request.urlopen(req);
        return response.read().decode('utf-8');
    except std_urllib_error.URLError as e:
        return std_json.dumps({"error": str(e)});
