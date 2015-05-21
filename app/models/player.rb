class Player < ActiveRecord::Base
  belongs_to :level
  
  #a player always has to have a name, but doesnt have to have a level
  #(initially a new player starts without a level, thus getting questions
  #of the lowest level)
  validates_presence_of :player_name
end