require 'rails_helper'

feature "Signing in" do
  let(:user) {FactoryGirl.create(:user)}

  def fill_in_signing_in_fields
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_button "Sign in"
  end

  scenario "Visiting the login page to sign in" do
    visit unauthenticated_root_path
    fill_in_signing_in_fields
    expect(page).to have_content("Signed in successfully.")
  end
end
