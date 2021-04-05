class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @characters = AirbenderService.search(params[:nation].titleize)
      .map do |character_data|
        Character.new(character_data)
      end
  end
end
