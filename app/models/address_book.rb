class AddressBook < ApplicationRecord
  belongs_to :user
  belongs_to :title
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses,
  reject_if: lambda {|attributes | attributes ["street"].blank?}

  def full_name
    "#{self.title.title} #{self.first_name} #{self.last_name}"
  end

def full_address
  if @address_book.addresses.any?
    @address_book.addresses.each do |a|
    "#{a.street}, #{a.city}, #{ a.state}, #{a.zipcode}, #{a.country}"
    end
  end
end
end
