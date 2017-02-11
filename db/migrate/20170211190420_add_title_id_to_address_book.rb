class AddTitleIdToAddressBook < ActiveRecord::Migration[5.0]
  def change
    add_column :address_books, :title_id, :integer
  end
end
