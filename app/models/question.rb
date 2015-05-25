class Question < ActiveRecord::Base
  belongs_to :level
  belongs_to :category
  has_many :answers
  
  #a question has to have at least one correct answer (#TODO:has_and_belongs_to_many)
  #a question has to belong to a certain level
  #a question always has to have a questiontext
  #though, especially in the beginning, the question doesn't have to have a category
  
  validates_presence_of :level_id, :category_id, :question_text
end
