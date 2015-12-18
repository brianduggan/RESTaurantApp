class AddUserIdToParty < ActiveRecord::Migration
  def change
    add_reference :parties, :user, index: true
  end
end
