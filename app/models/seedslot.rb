class Seedslot < ActiveRecord::Base

  has_and_belongs_to_many :seedrecs, join_table: "seedslots_seedrecs"


  #validates :title, presence: true,
   #                 length: { minimum: 5 }


  #validates :par, presence: true,
   #               numericality: { only_integer: true,
    #              				  greater_than_or_equal_to: 0 }


  #validates :last_year, presence: true,
   #                     numericality: { only_integer: true,
    #              				  greater_than_or_equal_to: 0 }


  #validates :this_year, presence: true,
   #                     numericality: { only_integer: true,
    #              				  greater_than_or_equal_to: 0 }
end
