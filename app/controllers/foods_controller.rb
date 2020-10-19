class FoodsController < ApplicationController
  def index
    @foods = make_food_items(my_request('foods/search', {query: params[:q], pageSize: 10})[:foods])
  end

  def make_food_items(food_items_array)
    food_items_array.map { |food_hash| Food.new(food_hash) }
  end

  def my_request(url, params = {})
    response = conn.get(url) do |req|
      req.params = params
      req.params['api_key'] = ENV['USDA_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/")
  end
end
