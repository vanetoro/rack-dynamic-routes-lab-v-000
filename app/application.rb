class Application
def call
 resp = Rack::Response.new
 req = Rack::Request.new(env)



if req.path.match(/items/)

else
    resp.write 'Bad Route'
    req.status = 404
    resp.finish
  end
end
end
