require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/stores') do
  @stores = Store.all
  erb(:stores)
end

post('/stores') do
  name = params['name']
  @store = Store.create({:name => name})
  redirect("/stores/".concat(@store.id.to_s))
end

get('/stores/:id') do
  @store = Store.find(params['id'].to_i)
  erb(:store)
end

get('/brands') do
  @brands = Brand.all
  erb(:brands)
end

post('/brands') do
  name = params['name']
  price = params['price']
  @brand = Brand.create({:name => name, :price => price})
  redirect("/brands/".concat(@brand.id.to_s))
end

get('/brands/:id') do
  @brand = Brand.find(params['id'].to_i)
  erb(:brand)
end
