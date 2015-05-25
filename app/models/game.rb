class Game < ActiveRecord::Base
  belongs_to :question
  belongs_to :level
  belongs_to :player
  belongs_to :category
end
