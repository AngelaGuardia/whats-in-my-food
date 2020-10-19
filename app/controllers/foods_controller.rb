class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q])
  end
end
