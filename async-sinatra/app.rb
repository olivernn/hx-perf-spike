require 'rubygems'
require 'sinatra'
require 'sinatra/async'

class Test < Sinatra::Base
  register Sinatra::Async

  get '/foo' do
    "foo"
  end

  aget '/' do
    EM.add_timer(5) do
      body { "foo!" }
    end
  end

end