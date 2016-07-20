require 'rails_helper'

describe "Cannot create user without username" do
  scenario "Cannot create user without username" do
    visit new_user_path

    fill_in "Password", :with => "password"

    click_on  "Create Account"

    expect(page).to have_content("Username can't be blank")
  end
end
