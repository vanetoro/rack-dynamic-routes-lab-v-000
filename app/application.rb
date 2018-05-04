
require'pry'

class Application
  def call(env)
    @@items =[]

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if  req.path.match(/items/)
      @@items.each do |item|
        binding.pry
        resp.write "#{item.price}"
      end
      # binding.pry

    else

     resp.write "Route not found"
     resp.status = 404
   end
   resp.finish
  end
end
