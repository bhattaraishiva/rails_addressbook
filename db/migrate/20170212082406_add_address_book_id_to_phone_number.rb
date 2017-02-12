class AddAddressBookIdToPhoneNumber < ActiveRecord::Migration[5.0]
  def change
    add_reference :phone_numbers, :address_book, foreign_key: true
  end
end
