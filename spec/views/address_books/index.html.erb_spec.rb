require 'rails_helper'

RSpec.describe "address_books/index", type: :view do
  before(:each) do
    assign(:address_books, [
      AddressBook.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      AddressBook.create!(
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of address_books" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
