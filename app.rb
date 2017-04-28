require('sinatra')
require('sinatra/reloader')
require('./lib/word')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

get('/word') do
  erb(:word)
end
