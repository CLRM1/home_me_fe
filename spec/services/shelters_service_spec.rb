require 'rails_helper'

RSpec.describe 'Shelters Service' do
  it 'can return all shelters' do
    shelters = SheltersService.get_all_shelters

    expect(shelters[:data].length).to eq(18)
    expect(shelters).to be_a(Hash)
    expect(shelters.values).to be_a(Array)
    expect(shelters[:data][0][:attributes][:name]).to be_a(String)
    expect(shelters[:data][0][:attributes][:address]).to be_a(String)
    expect(shelters[:data][0][:attributes][:city]).to be_a(String)
    expect(shelters[:data][0][:attributes][:number_of_beds]).to be_a(Float)
    expect(shelters[:data][0][:attributes][:provider]).to be_a(String)
    expect(shelters[:data][0][:attributes][:state]).to be_a(String)
    expect(shelters[:data][0][:attributes][:full_address]).to be_a(String)
    expect(shelters[:data][0][:attributes][:shelter_type]).to be_a(String)
    expect(shelters[:data][0][:attributes][:sub_type]).to be_a(String)
    expect(shelters[:data][0][:attributes][:lgbtq_focused]).to be_a(String)
    expect(shelters[:data][0][:attributes][:ages_served]).to be_a(String)
    expect(shelters[:data][0][:attributes][:website]).to be_a(String)
  end
end