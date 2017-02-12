class AddAddressIdToAddressBook < ActiveRecord::Migration[5.0]
  def change
    add_column :address_books, :address_id, :integer
  end
end
