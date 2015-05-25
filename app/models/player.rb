class Player < ActiveRecord::Base
  belongs_to :level
  belongs_to :user
  #a player always has to have a name, but doesnt have to have a level

  validates :player_name, :user_id, :level_id, presence: true, uniqueness: false
end
