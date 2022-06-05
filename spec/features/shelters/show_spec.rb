require 'rails_helper'

RSpec.describe 'Shelters show page' do
  it "displays a shetler and it's information" do
    visit '/shelters/nativity-shelter-for-Women'
    expect(page).to have_content('Nativity Shelter for Women')
    expect(page).to have_content('6010 Georgia Ave., NW')
    expect(page).to have_content('20011')
    expect(page).to have_content('https://www.catholiccharitiesdc.org/nativity/')
  end
end
