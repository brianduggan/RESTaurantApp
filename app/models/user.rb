class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :orders, through: :parties
  validates :username, uniqueness: true
  validates :password, length: { in: 6..20 }
  # UNIQUENESS
end
