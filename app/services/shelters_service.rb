class SheltersService
  def self.get_all_shelters
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/")
    response = connection.get("shelters")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.post_save_shelter(shelter_id, user_id, user_email)
    data = {data:
              [
                {
                  shelter_id: shelter_id,
                  user_id: user_id,
                  user_email: user_email
                }
              ]}
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/")
    response = connection.post("user_shelters", body = data.to_json)
  end

  def self.get_users_shelters(user_id)
    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/")
    response = connection.get("users/#{user_id}/shelters")
    if response.status == 404
      "Shelter not found"
    else
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
