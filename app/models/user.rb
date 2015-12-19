class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :orders, through: :parties
end
