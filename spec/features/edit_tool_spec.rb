require 'rails_helper'

describe "Delete a tool" do
  scenario "User can delete a tool" do
    Tool.create(name: "Rotary cutter", price: 100.00, quantity: 10)

    visit edit_tool_path(Tool.first)

    fill_in "Name", :with => "Screwdriver"
    fill_in "Quantity", :with => "5"
    fill_in "Price", :with => "50"

    click_on "Update Tool"

    # find(".tool_info").visible?
    expect(current_path).to eq(tools_path)
  end
end
