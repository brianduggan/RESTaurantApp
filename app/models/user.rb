class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :orders, through: :parties
  validates :username, uniqueness: true
  # validates :password, length: { in: 6..20 }

  def permission_level
    if self.permission == 0
      "Chef"
    elsif self.permission == 1
      "Server"
    else
      "Manager"
    end
  end


end
