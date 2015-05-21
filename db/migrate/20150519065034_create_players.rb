class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_name
      t.belongs_to :level, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
