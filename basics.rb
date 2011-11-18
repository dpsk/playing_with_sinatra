  begin
    require 'sinatra'
    require 'omniauth'
  rescue LoadError
    require 'rubygems'
    require 'sinatra'
    require 'omniauth'
  end
  
  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :twitter, 'HRFXiTmNfJ1XiVzJ7YGj6g', 'o6bc3kCC1M74s4fMol2qysjOOtA9cAk0XrZfcXvtdwI'
  end

  get '/' do
    haml :index
  end
  
  get '/auth/twitter/callback' do
    redirect "/"
  end
