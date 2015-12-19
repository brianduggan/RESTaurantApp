class AddPaidYetToPartiesTable < ActiveRecord::Migration
  def change
    add_column :parties, :paidyet, :integer, :default => 0
  end
end
