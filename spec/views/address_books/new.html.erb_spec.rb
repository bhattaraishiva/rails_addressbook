require 'rails_helper'

RSpec.describe "address_books/new", type: :view do
  before(:each) do
    assign(:address_book, AddressBook.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new address_book form" do
    render

    assert_select "form[action=?][method=?]", address_books_path, "post" do

      assert_select "input#address_book_first_name[name=?]", "address_book[first_name]"

      assert_select "input#address_book_last_name[name=?]", "address_book[last_name]"
    end
  end
end
