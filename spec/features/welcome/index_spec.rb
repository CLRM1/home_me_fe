require 'rails_helper'

RSpec.describe 'Welcome landing page' do
  it 'displays the name of the app' do
    visit '/'
    expect(page).to have_content('HomeMe')
  end

  # it 'allows unauthorized users to view all shelters' do
  #   visit '/'
  #
  #   click_button 'view all shelters'
  #   expect(current_path).to eq('/shelters')
  #   expect(page).to have_content('Nativity Shelter for Women')
  # end

  # it 'allows unauthorized users to search shelters' do
  #   visit '/'
  #   fill_in 'search', with: '10182'
  #   click_button 'search'
  #   expect(current_path).to eq('/results')
  #   expect(page).to have_content('Nativity Shelter for Women')
  # end

end
