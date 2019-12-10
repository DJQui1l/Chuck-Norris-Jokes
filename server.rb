require 'sinatra'
require 'chuck_norris'

# get '/' do
#
#   erb :index
#    # ChuckNorris.random
# end

get '/' do
# chucknorris joke
@random_joke = ChuckNorris::JokeFinder.get_joke
erb :index
end

get '/joke/:id' do
  joke_id = params[':id'].to_i
  @found_joke = ChuckNorris::JokeFinder.find_joke(joke_id)
  @found_joke.joke
end

get '/categories' do
  # call the category listing method
  @categories = ChuckNorris::JokeFinder.joke_categories
  # puts ChuckNorris::JokeFinder
# puts @categories
# puts @categories.methods
  # return an ERB file with a list of categories that also link to a page of those categories
  erb :categories

end

get '/category/:name' do
  @category_name = params['name']
  @catergory_name

end
