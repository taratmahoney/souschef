class AddingUnitsToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :unit, :string
    add_column :ingredients, :number, :integer
  end
end
