class SheltersService

  def self.get_all_shelters
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/")
    response = connection.get("shelters")
    shetlers = JSON.parse(response.body, symbolize_names: true)
  end

end
