require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/film')
require_relative('./models/customer')
require_relative('./models/screening')
require_relative('./models/ticket')
also_reload('./models/*')

get '/index' do
    @film_all = Film.all()
    @titles = @film_all.map {|film| film.title}
    erb(:index)
end

get '/film_info' do
    @film_all = Film.all()
    @all_titles = @film_all.map {|film| film.title}
    @all_prices = @film_all.map {|film| film.price}
    erb(:film_info)
end

