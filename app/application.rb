
require'pry'

class Application
  def call(env)
    @@items =[]

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if  req.path.match(/items/)
      item_name = req.path.split("/items/").last

    item = @@items.find {|i| i.name == item_name}
        binding.pry
        resp.write "#{item.price}"
      end
    else
     resp.write "Route not found"
     resp.status = 404
   end
   resp.finish
  end
end
