require 'sinatra'
set :root, File.dirname(__FILE__)
enable  :sessions, :logging

class App < Sinatra::Base
  get '/' do
    "#{request.inspect}"
    $rack.info "asd"
  end


  @repo_url = "https://github.com/jamox/Kandi.git"
  post '/' do
    push = JSON.parse(params[:payload])
    `cd /home/jamo/sites/root/kandi/ && git pull && cd referaatti/ && pdflatex template-fi.tex`
  end
end