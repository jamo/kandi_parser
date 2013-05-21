require 'rubygems'
require 'sinatra'
require 'logger'

configure do
   enable :logging
  #file = File.new("logs/asd.log", 'a+')
  #file.sync = true
  #use Rack::CommonLogger, file
end

require './app'
run App.new

#
#run Sinatra::Application
