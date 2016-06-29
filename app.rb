require("sinatra")
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/form') do
  erb(:form)
end

get('/result') do
  @sentence = params.fetch('sentence')
  erb(:result)
end
