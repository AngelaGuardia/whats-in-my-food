require 'rails_helper'

describe "Welcome search index" do
  it "returns 10 most relevant items related to a search" do
    visit root_path

    fill_in :q, with: "Sweet Potatoes"
    click_on "Search"

    expect(current_page).to eq(foods_path)

    expect(page).to have_content("Results: 10")
    expect(age.all('.food-item').size).to eq(10)
    
    within page.all('.food-item').first do
      expect(page).to have_content('GTIN/UPC code')
      expect(page).to have_content('Description')
      expect(page).to have_content('Brand Owner')
      expect(page).to have_content('Ingredients')
    end
  end
end
