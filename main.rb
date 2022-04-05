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
    end
  end
  servers.each(&:join)
ensure
  socket.close
end
