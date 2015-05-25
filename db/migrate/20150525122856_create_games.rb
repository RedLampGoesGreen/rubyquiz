class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :level, index: true, foreign_key: true
      t.text :wrong_answer
      t.belongs_to :player, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
