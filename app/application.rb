class Application
def call(env)
 resp = Rack::Response.new
 req = Rack::Request.new(env)



if req.path.match(/items/)

else
    resp.write 'Bad Route'
    req.status = 400

  end
  resp.finish
end
end
