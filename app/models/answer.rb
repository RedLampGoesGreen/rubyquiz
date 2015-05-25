class Answer < ActiveRecord::Base
  has_one :question
  
  validates_presence_of :answer_text
end
