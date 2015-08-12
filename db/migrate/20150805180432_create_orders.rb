class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :date
      t.text :content
      t.references :seedslot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
