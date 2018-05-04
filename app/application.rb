
require'pry'

class Application
  def call(env)
    @@items =[]

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if  req.path.match(/items/)
      item_search = req.params['items']
    else
  #    resp.write "#{item.price}"
  #  else
    # binding.pry
     resp.write "Route not found"
     resp.status = 404
   end
   resp.finish
  end
end
