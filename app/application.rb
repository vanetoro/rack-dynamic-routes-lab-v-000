class Application
def call
 resp = Rack::Response.new
 req = Rack::Request.new(env)

end

if req.path(/items/)
  resp.write 'Bad Route'
 req.status = 404
end
