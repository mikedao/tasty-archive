require 'rails_helper'

RSpec.describe 'as a visitor when I visit the home page', type: :feature do
  it 'can create a new user' do
    visit root_path

    click_on 'Sign Up'

    expect(current_path).to eq(new_users_path)

    username  = 'sej'
    email     = 'sean@example.com'
    password  = 'hamburger1'

    fill_in :username, with: username
    fill_in :email, with: email
    fill_in :password, with: password
    
    click_on 'Create User'

    expect(page).to have_content("Welcome, #{username}!")
  end
end