class Category < ActiveRecord::Base
  has_and_belongs_to_many :questions
  has_and_belongs_to_many :games
  
  #a category alwaly has to have a name, though especially in the beginning of this application
  #does not have to have a question
  validates_presence_of :category_name
  #validates_uniqueness_of :category_name
end
