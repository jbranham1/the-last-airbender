class AirbenderService
  def self.search(affiliation)
    response = connection.get("characters?affiliation=#{affiliation}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.connection
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
  end
end
