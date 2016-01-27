require 'bundler/setup'

namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end

desc "Pings PING_URL to keep a dyno alive"
  task :dyno_ping do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end
