require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra/base'

class WebApp < Sinatra::Base
  get '/' do
  	@title = 'Hello'
    haml :index
  end

  get '*' do
  	'This is not the page you are looking for!'
  end
end