require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/film')
also_reload('./models/*')

get '/film' do
    @films = Film.all()
    erb(:film)
end