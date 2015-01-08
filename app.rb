require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/form')do
  erb(:form)
end

get('/results')do
  @sender = params.fetch('sender')
  @score = @sender.score()
  erb(:results)
end
