require 'rails_helper'

RSpec.feature "adding titles" do
  scenario "should allow user a title " do
    visit new_title_path

    fill_in "Title", with: "Mr."

    click_on("Create Title")

    expect(page).to have_content("Mr.")
  end
end
