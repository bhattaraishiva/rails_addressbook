class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :address_books

  has_attached_file :picture_user, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture_user, content_type: /\Aimage\/.*\z/

end
