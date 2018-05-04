class Application
def call
 resp = Rack::Response.new
 req = Rack::Request.new(env)



  if req.path.match(/items/)
    resp.write 'Bad Route'
   req.status = 404
   end
end
end
