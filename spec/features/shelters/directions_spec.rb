require 'rails_helper'

RSpec.describe 'Shelters directions' do
  it 'can return the directions to a shelter' do

    visit '/'

    fill_in 'zipcode', with: "20011"
    fill_in 'name', with: ""
    fill_in 'address', with: ""

    click_on "search"

    expect(current_path).to eq('/results')
    expect(page).to have_content("Nativity Shelter for Women")
    expect(page).to have_content("6010 Georgia Ave., NW")
    expect(page).to have_content("20011")

    # click_on "#{shelter.id} directions"
  end
end