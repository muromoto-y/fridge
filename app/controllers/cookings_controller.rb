class CookingsController < ApplicationController
  
  def index
    @cookings = Cooking.all
  end

end
