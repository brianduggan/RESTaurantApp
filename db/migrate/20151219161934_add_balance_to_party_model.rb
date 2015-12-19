class AddBalanceToPartyModel < ActiveRecord::Migration
  def change
    add_column :parties, :balance, :integer, :default => 0
  end
end
