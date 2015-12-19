class Order < ActiveRecord::Base
  belongs_to :party
  belongs_to :food

  def time_difference
    origin = self.created_at
    time_now = Time.now
    time_diff = (time_now - origin)/60
    time_diff
  end



end
