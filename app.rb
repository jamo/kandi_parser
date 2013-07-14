set :root, File.dirname(__FILE__)

class App < Sinatra::Base
  get '/' do
    "#{request.inspect}"
  end


  post '/' do
    a = Thread.new {`cd /home/jamo/sites/root/kandi/  && git pull && cd referaatti/ && pdflatex template-fi && bibtex template-fi && pdflatex template-fi && pdflatex template-fi` }
    a.join
  end
end


