class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :number
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
