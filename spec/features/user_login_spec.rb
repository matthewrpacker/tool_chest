require 'rails_helper'

describe "Registered user can login" do
  scenario "Registered user is logged in" do
    user = User.create(username: "Matt", password: "password")

    visit login_path

    fill_in "Username", :with => user.username
    fill_in "Password", :with => "password"

    click_on  "Login"

    expect(page).to have_content("Welcome, Matt")
  end
end


#teardown in test_help for rspec???
