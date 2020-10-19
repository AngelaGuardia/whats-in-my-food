require 'rails_helper'

describe FoodFacade do
  it "returns food objects form search" do
    foods = FoodFacade.food_search("sweet potatoes")

    expect(foods).to be_a(Array)
    expect(foods.all? Food).to be_truthy
  end
end
