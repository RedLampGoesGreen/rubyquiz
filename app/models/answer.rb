class Answer < ActiveRecord::Base
  belongs_to :question
  
  #a answer always has to have a answertext, though does not have to belong to a question
  #(might be better to use a "has_and_belongs_to_many")
  #therefore, in the quiz a Question will be asked with its belonging answer (or one of them)
  #and 3 non belonging answers (depending on level of the player/question, the answers
  #will be choosen from questions of the same category)
  validates_presence_of :answer_text
end
