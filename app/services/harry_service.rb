class HarryService
  def house_members(house)
    response = conn.get('/v1/characters') do |faraday|
      faraday.params['orderOfThePhoenix'] = true
      faraday.params['house'] = house
    end
    json = JSON.parse(response.body, symbolize_names: true)
    json.map do |character_data|
      Character.new(character_data)
    end
  end

  private

  def conn
    Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.params['key'] = ENV['harry_potter_api']
    end
  end

end
