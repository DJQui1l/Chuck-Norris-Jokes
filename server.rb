require 'sinatra'
require 'chucknorris'

get '/' do

  erb :index
   # ChuckNorris.random
end
