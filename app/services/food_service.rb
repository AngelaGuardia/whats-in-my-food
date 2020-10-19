class FoodService
  def self.food_search(query)
    my_request('foods/search', {query: query, pageSize: 10})[:foods]
  end

  def self.my_request(url, params = {})
    response = conn.get(url) do |req|
      req.params = params
      req.params['api_key'] = ENV['USDA_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/")
  end
end
