class Level < ActiveRecord::Base
  has_many :questions
  has_many :players
  
  #a level cannot be created without a rank. this rank has to be unique
  validates_presence_of :level_rank
  validates_uniqueness_of :level_rank
end
