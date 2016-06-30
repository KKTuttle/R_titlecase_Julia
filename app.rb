require("sinatra")
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end



get('/result') do
  @changed_sentence = params.fetch('sentence').title_case
  erb(:result)
end
