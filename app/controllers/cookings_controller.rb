class CookingsController < ApplicationController
  
  def index
    @cookings = Cooking.all
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)
    if @cooking.save
       redirect_to root_path
    else
      render :new
    end
  end

  private

  def cooking_params
    params.require(:cooking).permit(:image, :cooking_name, :explanation, :ingredients1, :quantity1, :ingredients2, :quantity2, :ingredients3, :quantity3, :ingredients4, :quantity4, :ingredients5, :quantity5, :ingredients6, :quantity6, :ingredients7, :quantity7, :ingredients8, :quantity8, :ingredients9, :quantity9, :ingredients0, :quantity0, :name).merge(user_id: current_user.id)
  end

end
