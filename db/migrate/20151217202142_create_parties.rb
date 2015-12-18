class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guest_count
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
