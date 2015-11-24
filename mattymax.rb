# /----------------------------------------------------------.
# |  mattymax.rb                                             |
#_|                                                          |
# TODO: sqwash commits (the wierd ones, AKA most of them?)   |
#\___________________________________________________________/

require 'sinatra'
require 'slim'

# TODO: make sinatra work in parallel with middleman
class MattyMax < Sinatra::Base
  get '/' do
    puts '/'
    slim :root
  end

  # [noun] say [verb] to [noun]
  get '/shit' do
    puts '/shit'
    "fuck"
  end

  # [noun] say [verb] to [noun]
  get '/*/says/*/to/*' do
    puts '/*/says/*/to/*'
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
end
