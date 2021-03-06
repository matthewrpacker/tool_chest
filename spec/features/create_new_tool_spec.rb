require 'rails_helper'

describe "Create new tool" do
  scenario "User creates new tool" do
    visit new_tool_path

    fill_in "Name", :with => "Screwdriver"
    click_button "Create Tool"

    expect(page).to have_content("Screwdriver")
  end
end
