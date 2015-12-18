class AddFoodIdToOrdersTable < ActiveRecord::Migration
  def change
    add_reference :orders, :food, index: true
  end
end
