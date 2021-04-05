require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'happy path' do
    it 'fetches characters based on a search nation' do
      nation = 'Fire Nation'
      response = AirbenderService.get_characters(nation)

      expect(response).to be_a(Array)
      expect(response.count).to be(25)
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

    it 'fetches characters based on a search nation and page number' do
      nation = 'Fire Nation'
      response = AirbenderService.get_characters(nation,3)

      expect(response).to be_a(Array)
      expect(response.count).to be(25)
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
  end
  describe 'sad path' do
    it 'doesnt fetch characters with bad search criteria' do
      nation = 'test'
      response = AirbenderService.get_characters(nation)

      expect(response).to be_a(Array)
      expect(response.count).to eq(0)
    end
    it 'doesnt fetch characters with page that doesnt exist' do
      nation = 'Fire Nation'
      response = AirbenderService.get_characters(nation, 999)

      expect(response).to be_a(Array)
      expect(response.count).to eq(0)
    end
  end
end
