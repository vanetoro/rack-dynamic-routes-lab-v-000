
require'pry'

class Application
  def call(env)
    @@items =[]
    
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  req.path.match(/items/)
      item_search = req.params['item']
      binding.pry
  #    resp.write "#{item.price}"
  #  else
  #    resp.write "Route not found"
  #    resp.status = 404

require.pry

class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new

    if req.path.match(/items/)
      # binding.pry
     resp.write "#{item.price}"
   else
     resp.write = "Route not found"
     resp.status = 404
   end
>>>>>>> 547bfae15360f74c299fa7c990ddfaec9b250be0

 end
end
