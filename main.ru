require 'pry'

class HelloWorld
  def call(env)
    http_version = env['SERVER_PROTOCOL']
    method = env['REQUEST_METHOD']
    path = env['REQUEST_PATH']
    [ 200, { "Content-Type" => "text/plain" }, ["(#{http_version}): Hello #{method}: #{path}"] ]
  end
end

run HelloWorld.new