require 'rails_helper'

RSpec.describe 'Sign up without oauth' do
  xit 'can create and sign up a user from the welcome page' do
    visit '/'

    click_on "sign up"

    expect(current_path).to eq('/users/signup')

    email = "example@example.com"
    password = "abc123"

    fill_in "email", with: email
    fill_in "password", with: password
    click_on "Submit"

    expect(current_path).to eq("/dashboard")
    expect(page).to have_content('logout')
    expect(page).to have_content("Welcome, #{email}!")
    expect(page).to_not have_content("sign up")
    expect(User.last).to be_a(User)

    click_on "logout"

    expect(current_path).to eq('/')

    click_on "log in"

    expect(current_path).to eq('/users/log_in')

    fill_in "email", with: email
    fill_in "password", with: password
    click_on "Submit"

    expect(current_path).to eq('/dashboard')
  end
end