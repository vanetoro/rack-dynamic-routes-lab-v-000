class Application
def call
 resp = Rack::Response.new
 req = Rack::Request.new(env)



if req.path.match(/items/)

else
    resp.write 'Bad Route'
    req.status = 404

  end
  resp.finish
end
end
