class FoodFacade
  def self.food_search(query)
    food_items_array = FoodService.food_search(query)
    food_items_array.map { |food_hash| Food.new(food_hash) }
  end
end
