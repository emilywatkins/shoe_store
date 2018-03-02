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
  erb(:brands)
end
