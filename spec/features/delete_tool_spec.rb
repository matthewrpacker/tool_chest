require 'rails_helper'

describe "Delete a tool" do
  scenario "User can delete a tool" do
    Tool.create(name: "Rotary cutter", price: 100.00, quantity: 10)
    visit tool_path(Tool.first)

    expect(page).to have_content("Rotary cutter")

    click_on "Delete"

    expect(current_path).to eq(tools_path)

    # find(".tool_info").visible?

    within(".tool_info") do
      expect(page).to have_no_content("Rotary cutter")
    end
  end
end
