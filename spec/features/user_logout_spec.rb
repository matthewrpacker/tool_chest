require 'rails_helper'

describe "Logged-in user can logout" do
  scenario "Logged-in user is logged out" do
    user = User.create(username: "Matt", password: "password")

    visit login_path

    fill_in "Username", :with => user.username
    fill_in "Password", :with => "password"

    click_on  "Login"

    expect(page).to have_content("Welcome, Matt") #remove expectation (not relevant)

    click_on "Logout"

    expect(page).to have_no_content("Welcome, Matt")
  end
end


#teardown in test_help for rspec???
