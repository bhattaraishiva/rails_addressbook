class Address < ApplicationRecord
  belongs_to :address_book, required: false
end
