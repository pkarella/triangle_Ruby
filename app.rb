require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  sideone = params.fetch('sideone').to_i
  sidetwo = params.fetch('sidetwo').to_i
  sidethree = params.fetch('sidethree').to_i
  @output = Triangle.new(sideone,sidetwo,sidethree)
  .triangle_calc?()
  erb(:index)
end
