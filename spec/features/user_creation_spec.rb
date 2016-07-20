require 'rails_helper'

describe "User can be created" do
  scenario "User is created" do
    visit new_user_path

    fill_in "Username", :with => "Matt"
    fill_in "Password", :with => "password"

    click_on  "Create Account"

    expect(page).to have_content("Welcome, Matt")
  end
end


#teardown in test_help for rspec???
