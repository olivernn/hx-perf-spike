require 'rubygems'
require 'sinatra'

class Test < Sinatra::Base
  get "/" do
    sleep 5
    "blah"
  end
end