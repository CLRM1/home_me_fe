require 'rails_helper'

RSpec.describe 'Welcome landing page' do
  it 'displays the name of the app' do
    visit '/'
    expect(page).to have_content('HomeMe')
  end

  it 'allows unauthorized users to search for shelters' do
    visit '/'
    fill_in 'search', with: '10182'
    expect(page).to have_content('Shelter A')
  end

end
