class SearchFacade
  def self.get_characters(affiliation)
    num = 1
    all_characters = []
    loop do
      characters = AirbenderService.get_characters(affiliation, num)
      if characters.empty?
        break
      else
        characters.each do |character_data|
          all_characters << Character.new(character_data)
        end
        num += 1
      end
    end
    all_characters
  end    
end
