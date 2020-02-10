class Application
 
  
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/<ITEM NAME>)
      @items.each do |item|
        resp.write "#{item.price}\n"
      end
    else
      resp.write "Path Not Found"
    end
 
    resp.finish
  end
end