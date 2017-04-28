require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definitions')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @words = Word.all
  erb(:index)
end

post('/words_after_add') do
  @word = params.fetch('word')
  new_word = Word.new(@word)
  new_word.save()
  @words = Word.all
  erb(:index)
end

get('/words_after_add') do
  @words = Word.all
  erb(:index)
end

get('/words_clear') do
  Word.clear
  @words = Word.all
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/word/:id/add') do
  @word = Word.find(params.fetch('id').to_i())
  definition = params.fetch('definition')
  if definition != ""
    @definition = Definition.new(definition)
    @word.add_definitions(@definition)
  end
  erb(:word)
end
