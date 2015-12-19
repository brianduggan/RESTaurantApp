class AddTableNumToPartiesTable < ActiveRecord::Migration
  def change
    add_column :parties, :table_num, :integer, :default => 0
  end
end
