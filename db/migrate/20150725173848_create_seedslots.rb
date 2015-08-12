class CreateSeedslots < ActiveRecord::Migration
  def change
    create_table :seedslots do |t|
      t.string :title
      t.integer :par
      t.integer :last_year
      t.integer :this_year

      t.timestamps null: false
    end
  end
end
