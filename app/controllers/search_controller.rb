require 'rails_helper'

class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.params['key'] = ENV['harry_potter_api']
    end

    response = conn.get('/v1/characters')
    require "pry"; binding.pry
  end
end
