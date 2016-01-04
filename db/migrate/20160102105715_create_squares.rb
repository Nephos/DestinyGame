class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.integer :position
      t.string :title
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
