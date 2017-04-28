require('sinatra')
require('sinatra/reloader')
require('./lib/word')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @word = Word.all
  erb(:index)
end

post('/') do
  @word_name = params.fetch('word')
  new_word = Word.new(@word_name)
  new_word.save
  @word = Word.all
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

get('/word') do
  erb(:word)
end
