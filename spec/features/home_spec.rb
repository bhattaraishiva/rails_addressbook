require 'rails_helper'

feature "Visting home page" do
  scenario "Visitor sees the login page" do
    visit authenticated_root_path
    expect(page).to have_text("Address Book : Login")
  end
end
