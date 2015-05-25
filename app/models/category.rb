class Category < ActiveRecord::Base
  has_many :questions
  
  #a category alwaly has to have a name, though especially in the beginning of this application
  #does not have to have a question
  validates_presence_of :category_name
  #validates_uniqueness_of :category_name
end
