
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

end
