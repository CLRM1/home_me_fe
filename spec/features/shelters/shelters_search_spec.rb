require 'rails_helper'

RSpec.describe 'Shelters Search Functions' do
  it 'can return the top 5 results based on the search criteria entered' do

    visit '/'

    fill_in 'zipcode', with: "20011"
    fill_in 'name', with: ""
    fill_in 'address', with: "Georgia Ave"

    click_on "search"
    
  end
end