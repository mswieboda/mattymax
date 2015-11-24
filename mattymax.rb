# /----------------------------------------------------------.
# |  mattymax.rb                                             |
#_|                                                          |
# TODO: sqwash commits (the wierd ones, AKA most of them?)   |
#\___________________________________________________________/

require 'sinatra'
require 'slim'

get '/' do
  puts '/'
  slim :root
end

# [noun] say [verb] to [noun]
get '/*/say/*/to/*' do
  puts '/*/say/*/to/*'
  third_p, shit, thing = params['captures']
  thing.match(/mattymax/i) ? "thx, h3ll0 #{third_p}" : "I'd bet #{thing} thinks so"
end

# captures
# get '/:path.?:format?' do
get /\A\/(.*)\?*\z/, :provides => 'html' do
  puts '/\A\/(.*)\?*\z/'
  params['captures'].each { |c| puts c }
  slim :index
end

get '/*' do
  slim :index
end
