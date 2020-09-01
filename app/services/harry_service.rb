class HarryService
  def house_members(house)
    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.params['key'] = ENV['harry_potter_api']
      faraday.params['orderOfThePhoenix'] = true
      faraday.params['house'] = house
    end

    response = conn.get('/v1/characters')

    json = JSON.parse(response.body, symbolize_names: true)
    @characters = json.map do |character_data|
      Character.new(character_data)
    end
  end
end
