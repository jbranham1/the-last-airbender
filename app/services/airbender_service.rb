class AirbenderService
  def self.get_characters(affiliation, page =1)
    response = connection.get("characters?affiliation=#{affiliation}&perPage=25&page=#{page}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.connection
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
  end
end
