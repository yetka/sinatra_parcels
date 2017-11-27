require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')


get('/') do
  erb(:input)
end

post('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @depth = params.fetch("depth")
  @weight = params.fetch("weight")
  new_parcel = Parcel.new(@length, @width, @depth, @weight)
  @cost = new_parcel.cost_to_ship
  @shipping_cost = "Shipping cost for your parcel: #{@cost}"

  erb(:output)
end
