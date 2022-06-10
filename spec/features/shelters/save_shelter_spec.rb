require "rails_helper"

RSpec.describe "Save shelter" do
  it "a user can save a shelter from all shelters page" do
    email = "example@example.com"
    password = "abc123"
    # shelters = File.open("./spec/fixtures/shelter.json")
    # stub_request(:get, "/shelters/nativity-shelter-for-women")
    #   .to_return(status: 200, body: json_response)

    visit "/"
    click_on "sign up"

    fill_in "email", with: email
    fill_in "password", with: password
    click_on "Submit"

    visit "/shelters"

    within("#shelter-1") do
      click_button "Add shelter"
      save_and_open_page
    end
    # within("#shelter-1") do
      # expect(page).to have_content('Saved')
    # end
  end
end
