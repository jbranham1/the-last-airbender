require 'rails_helper'

RSpec.describe AribenderService do
  describe 'happy path' do
    it 'fetches characters based on a search nation' do
      nation = 'Fire Nation'
      response = AribenderService.search(nation)
      expect(response).to be_a(Array)
      data = response[:data]
      expect(data).to be_an(Array)
      character = data.first
      expect(character).to be_a(Hash)
      expect(character).to have_key :id
      expect(character).to have_key :allies
      expect(character[:allies]).to be_a(Array)
      expect(character).to have_key :enemies
      expect(character[:allies]).to be_a(Array)
      expect(character).to have_key :photoUrl
      expect(character).to have_key :name
      expect(character).to have_key :affiliation
    end
  end
end
