class SearchController < ApplicationController
  def index
    @house = params['house']
    @characters = HarryService.new.house_members(params['house'])
  end
end
