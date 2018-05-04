
require'pry'

class Application
  def call(env)
    @@items =[]

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if  req.path.match(/items/)
      item_search = req.params['item']
      resp.write "#{item_search.price}"
    else

     resp.write "Route not found"
     resp.status = 404
   end
   resp.finish
  end
end
