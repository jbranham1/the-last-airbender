require 'rails_helper'

RSpec.describe Character do
  it "exists" do
    attrs = {
        _id: "4564268",
        allies: ["allie"],
        enemies: ["enemie1", "enemie2"],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        name: "Name",
        affiliation: "Fire Nation"
      }

    character = Character.new(attrs)
    expect(character).to be_a Character
    expect(character.id).to eq(attrs[:_id])
    expect(character.name).to eq(attrs[:name])
    expect(character.allies).to eq(attrs[:allies])
    expect(character.allies).to be_an(Array)
    expect(character.allies.count).to eq(1)
    expect(character.enemies).to eq(attrs[:enemies])
    expect(character.enemies).to be_an(Array)
    expect(character.enemies.count).to eq(2)
    expect(character.photoUrl).to eq(attrs[:photoUrl])
    expect(character.affiliation).to eq(attrs[:affiliation])
  end
end
