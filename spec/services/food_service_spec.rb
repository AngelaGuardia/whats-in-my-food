require 'rails_helper'

describe FoodService do
  it "returns 10 most relevant foods related to a search" do
    foods = FoodService.food_search("Sweet Potatoes")

    expect(foods.size).to eq(10)
    expect(foods.first).to have_key(:gtinUpc)
    expect(foods.first[:gtinUpc]).to be_a(String)
    expect(foods.first).to have_key(:description)
    expect(foods.first[:description]).to be_a(String)
    expect(foods.first).to have_key(:brandOwner)
    expect(foods.first[:brandOwner]).to be_a(String)
    expect(foods.first).to have_key(:ingredients)
    expect(foods.first[:ingredients]).to be_a(String)
  end
end
