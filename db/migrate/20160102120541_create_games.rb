class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player
      t.string :positions

      t.timestamps null: false
    end
  end
end
