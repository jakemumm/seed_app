class CreateSeedrecs < ActiveRecord::Migration
  def change
    create_table :seedrecs do |t|
      t.integer :prod_num
      t.string :title
      t.integer :par
      t.integer :last_year
      t.integer :this_year

      t.timestamps null: false
    end
  end
end
