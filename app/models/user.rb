class User < ApplicationRecord
  has_many :contact_lists

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
