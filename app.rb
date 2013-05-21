set :root, File.dirname(__FILE__)

class App < Sinatra::Base
  post '/' do
    logger.info "asd"
    "#{request.inspect}"
  end


  get '/' do
    "aaa"
    logger.warn "asd"
    "bbb"
    # push = JSON.parse(params[:payload])
    a = Thread.new {`cd /home/jamo/sites/root/kandi/  && git pull && cd referaatti/ && pdflatex template-fi.tex` }
    a.join
  end
end
