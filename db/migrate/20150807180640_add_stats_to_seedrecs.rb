class AddStatsToSeedrecs < ActiveRecord::Migration
  def change
    change_table :seedrecs do |t|
      t.string :sku
      t.integer :add_to_order
      t.boolean :in_stock, :default => true
    end
  end
end
