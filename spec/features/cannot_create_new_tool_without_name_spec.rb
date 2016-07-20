require 'rails_helper'

describe "Cannot create new tool without name" do
  scenario "Cannot create new tool without name" do
    visit new_tool_path

    fill_in "Quantity", :with => "5"
    fill_in "Price", :with => "100"

    click_button "Create Tool"

    within(".flash_error") do
      expect(page).to have_content("Name can't be blank")
    end
  end
end
