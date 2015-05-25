class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :Level, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
