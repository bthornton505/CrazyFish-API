class User < ApplicationRecord
  has_secure_password

  validates :firstname, :lastname, presence: true
  validates :email, uniqueness: true
end
