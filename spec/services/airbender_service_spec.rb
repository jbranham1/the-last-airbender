require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'happy path' do
    it 'fetches characters based on a search nation' do
      nation = 'Fire Nation'
      response = AirbenderService.search(nation)

      expect(response).to be_a(Array)
      character = response.second

      expect(character).to be_a(Hash)
      expect(character).to have_key :_id
      expect(character).to have_key :allies
      expect(character[:allies]).to be_a(Array)
      expect(character).to have_key :enemies
      expect(character[:allies]).to be_a(Array)
      expect(character).to have_key :photoUrl
      expect(character).to have_key :name
      expect(character).to have_key :affiliation
    end

    it 'doesnt fetch characters with bad search criteria' do
      nation = 'test'
      response = AirbenderService.search(nation)

      expect(response).to be_a(Array)
      expect(response.count).to eq(0)

    end
  end
end
