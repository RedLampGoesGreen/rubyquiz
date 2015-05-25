class Game < ActiveRecord::Base
  belongs_to :category
  belongs_to :Level
end
