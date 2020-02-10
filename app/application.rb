class Application
 
  
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/<ITEM NAME>)
 
      item_price = req.path.split("/items/").last 
      item = @@items.find{|s| s.title == item_price}
 
      resp.write item.price
    end
 
    resp.finish
  end
end