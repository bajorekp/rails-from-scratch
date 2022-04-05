require 'socket'
require 'pry'

socket = TCPServer.new(4242)

begin
  puts "The server is running on port 4242..."
  loop do
    client = socket.accept
    puts "Hi user! I'm waiting for your message"

    begin
      client_id = client.to_i
      request = client.gets
      puts "Request from ##{client_id}: #{request}"
      client.puts "Hello"
    ensure
      client.close
    end
  end
ensure
  socket.close
end
