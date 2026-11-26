require "socket"

port = (ENV["PORT"] || "8080").to_i
server = TCPServer.new("0.0.0.0", port)
puts "listening on :#{port}"

loop do
  client = server.accept
  request = client.gets || ""
  path = request.split(" ")[1] || "/"

  body = if path == "/healthz"
           "ok\n"
         else
           "Hello from openFuyao Ruby S2I sample!\n"
         end

  client.print "HTTP/1.1 200 OK\r\n"
  client.print "Content-Type: text/plain; charset=utf-8\r\n"
  client.print "Content-Length: #{body.bytesize}\r\n"
  client.print "Connection: close\r\n"
  client.print "\r\n"
  client.print body
  client.close
end
