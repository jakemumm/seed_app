class SeedSlotsAndRecs < ActiveRecord::Migration
  def change
  	create_table :seedslots_seedrecs, id: false do |t|
      t.belongs_to :seedslot, index: true
      t.belongs_to :seedrec, index: true
    end
  end
end
