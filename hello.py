def app(environ, start_response):
    data = b""
    q = environ['QUERY_STRING'].split('&')
    for i in q:
        data = data + i.encode() + b"\n" #i.encode
    print(data.decode())
    start_response("200 OK", [
        ("Content-Type", "text/plain"),
        ("Content-Length", str(len(data)))
    ])
    return iter([data])