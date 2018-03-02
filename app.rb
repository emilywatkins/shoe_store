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
  @store = Store.find_or_create_by({:name => name})
  redirect("/stores/".concat(@store.id.to_s))
end

get('/stores/:id') do
  @store = Store.find(params['id'].to_i)
  @brands = Brand.all
  erb(:store)
end

get('/stores/:id/edit') do
  @store = Store.find(params['id'].to_i)
  erb(:store_edit)
end

patch('/stores/:id') do
  name = params['name']
  @store = Store.find(params['id'].to_i)
  @store.update({:name => name})
  @stores = Store.all
  @brands = Brand.all
  erb(:store)
end

delete('/stores/:id') do
  @store = Store.find(params['id'].to_i)
  @store.destroy
  @stores = Store.all
  @brands = Brand.all
  erb(:stores)
end

get('/brands') do
  @brands = Brand.all
  erb(:brands)
end

post('/brands') do
  name = params['name']
  price = params['price']
  brand = Brand.find_or_create_by({:name => name, :price => price})
  redirect("/brands/".concat(brand.id.to_s))
end

get('/brands/:id') do
  @brand = Brand.find(params['id'].to_i)
  erb(:brand)
end

post('/stores/:id/brands') do
  brand = Brand.find(params['brand'].to_i)
  store = Store.find(params['id'].to_i)
  store.brands << brand
  redirect("/stores/".concat(store.id.to_s))
end
