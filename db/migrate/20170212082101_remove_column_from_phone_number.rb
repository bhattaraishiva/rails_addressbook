class RemoveColumnFromPhoneNumber < ActiveRecord::Migration[5.0]
  def change
    remove_column :phone_numbers, :address_books_id
  end
end
