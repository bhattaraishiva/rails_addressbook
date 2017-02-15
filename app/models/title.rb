class Title < ApplicationRecord
  validates :title, presence: true
  has_many :address_books
end
