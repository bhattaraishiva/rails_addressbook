require 'rails_helper'

RSpec.describe "address_books/edit", type: :view do
  before(:each) do
    @address_book = assign(:address_book, AddressBook.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit address_book form" do
    render

    assert_select "form[action=?][method=?]", address_book_path(@address_book), "post" do

      assert_select "input#address_book_first_name[name=?]", "address_book[first_name]"

      assert_select "input#address_book_last_name[name=?]", "address_book[last_name]"
    end
  end
end
