class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :mp3
      t.integer :order_number
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
