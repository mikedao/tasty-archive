require 'rails_helper'

RSpec.describe 'as a visitor when I visit the home page', type: :feature do
  it 'can create a new user' do
    visit root_path

    click_on 'Sign Up'

    expect(current_path).to eq(new_user_path)

    username  = 'sej'
    email     = 'sean@example.com'
    password  = 'hamburger1'

    fill_in :user_username, with: username
    fill_in :user_email, with: email
    fill_in :user_password, with: password
    
    click_on 'Create User'

    expect(page).to have_content("Welcome, #{username}!")
  end
end