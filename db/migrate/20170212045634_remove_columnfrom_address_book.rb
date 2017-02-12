class RemoveColumnfromAddressBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :address_books, :address_id
  end
end
