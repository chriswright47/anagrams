require_relative '../models/word'

get '/' do
  erb :index
end

get '/:word' do
  erb :index
end

post '/answer' do
  @anagrams = Word.anagrams(params[:word])
   erb :index
end
