class TestController < ApplicationController
  def index
    sleep 5
    render :text => "foo"
  end
end