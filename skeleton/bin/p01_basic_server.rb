require 'rack'

# app = Proc.new do |env|
#   req = Rack::Request.new(env)
#   res = Rack::Response.new
#   res['Content-Type'] = 'text/html'
#   res.write("Hello world")
#   res.finish
# end

class App
  def self.call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new
    if req.path == '/i/love/app/academy'
      res['Content-Type'] = 'text/html'
      res.write("I love app academy")
      res.finish
    end
  end
end

Rack::Server.start(
  app: App,
  Port: 3000
)