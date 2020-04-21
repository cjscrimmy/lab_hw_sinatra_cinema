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
    #@titles = @title_data.each {|film| film}
    erb(:index)
end

