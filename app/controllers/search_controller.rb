class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    characters = SearchFacade.get_characters(params[:nation].titleize)
    @characters = characters.first(25)
    @character_count = characters.count
  end
end
