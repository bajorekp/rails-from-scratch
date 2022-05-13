require 'socket'
require 'pry'

socket = TCPServer.new(4242)

begin
  puts "The server is running on port 4242..."
  servers = 2.times.map do |pool_id|
    Thread.new do
      loop do
        puts "Thread #{pool_id} is wating for user..."
        client = socket.accept
        puts "Hi user! I'm waiting for your message..."
    
        begin
          client_id = client.to_i
          # get only the first line of the request but you can do more
          request = client.gets.chomp
          method, path, http_version = request.split(' ')
          puts "Method: #{method}, Path: #{path}, HTTP Version: #{http_version}"
          response = if path == '/hi'
            "HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: 13\r\n\r\n{\"foo\": \"hi\"}"
          else
            "HTTP/1.1 404 OK\r\nContent-Type: application/json\r\nContent-Length: 22\r\n\r\n{\"error\": \"not_found\"}"
          end
          # Log the request
          puts "Request from ##{client_id}: #{request}\nResponse for ##{client_id}: #{response}"
          client.print response
        ensure
          client.close
        end
      end
    end
  end
  servers.each(&:join)
ensure
  socket.close
end
