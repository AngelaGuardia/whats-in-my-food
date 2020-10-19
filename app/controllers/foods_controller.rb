class FoodsController < ApplicationController
  def index
    @foods = make_food_items(FoodService.food_search(params[:q]))
  end

  def make_food_items(food_items_array)
    food_items_array.map { |food_hash| Food.new(food_hash) }
  end


end
