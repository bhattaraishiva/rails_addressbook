class PhoneNumber < ApplicationRecord
  belongs_to :address_book, required: false
end
