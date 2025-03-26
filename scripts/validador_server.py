from http.server import HTTPServer, BaseHTTPRequestHandler

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write("✅ Validador Sentinel ativo".encode("utf-8"))

print("🔒 Validador Sentinel HTTP iniciado...")
server = HTTPServer(('0.0.0.0', 8000), Handler)
server.serve_forever()
