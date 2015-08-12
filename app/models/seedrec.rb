class Seedrec < ActiveRecord::Base
	has_and_belongs_to_many :seedslots, join_table: "seedslots_seedrecs"

	def six_more
    if self.add_to_order == nil
      return 6
    else
      return 6 + self.add_to_order
    end
  end

end
