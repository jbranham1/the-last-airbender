class Character
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
    @affiliation = data[:affiliation]
  end
end
