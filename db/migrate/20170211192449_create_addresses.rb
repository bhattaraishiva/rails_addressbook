class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :address_book_id

      t.timestamps
    end
  end
end
