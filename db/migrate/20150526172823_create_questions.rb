class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :level, index: true, foreign_key: true
      t.belongs_to :answer, index: true, foreign_key: true
      t.text :question_text

      t.timestamps null: false
    end
  end
end
