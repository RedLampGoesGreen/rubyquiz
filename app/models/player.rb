class Player < ActiveRecord::Base
  belongs_to :level
  belongs_to :user
  #a player always has to have a name, but doesnt have to have a level
  #(initially a new player starts without a level, thus getting questions
  #of the lowest level)
  validates :player_name, :user_id, presence: true, uniqueness: true
end
