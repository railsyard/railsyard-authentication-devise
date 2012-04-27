class StaticController < ApplicationController
  def index
    render :text => "<a href='/backend'>Go to backend</a>"
  end
end
