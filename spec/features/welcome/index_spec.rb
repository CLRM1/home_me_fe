require 'rails_helper'

RSpec.describe 'Welcome landing page' do
  it 'has a button to view all shelters' do
    visit '/'
    click_on 'view all shelters'
    expect(current_path).to eq('/shelters')
  end

  it 'allows unauthorized users to view all shelters' do
    json_response = File.open('./spec/fixtures/shelters.json')
    stub_request(:get, '/shelters').
      to_return(status: 200, body: json_response)

    visit '/shelters'

    expect(page).to have_content('Nativity Shelter for Women')
    expect(page).to have_content('Harriet Tubman Shelter & Day Center')
    expect(page).to have_content('801 East - Shelter')
    expect(page).to have_content('Covenant House Washington')
    expect(page).to have_content('La Casa TRP')
    expect(page).to have_content('Mickey Leland House')
  end

end
