require 'sinatra'

configure do
  # logging is enabled by default in classic style applications,
  # so `enable :logging` is not needed
  file = File.new("logs/app.log", 'a+')
  file.sync = true
  use Rack::CommonLogger, file
end

require './app'
run App.new

#
#run Sinatra::Application