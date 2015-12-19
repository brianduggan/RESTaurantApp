class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :readyyet, :integer, :default => 0
  end
end
