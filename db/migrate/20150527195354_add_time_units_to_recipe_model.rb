class AddTimeUnitsToRecipeModel < ActiveRecord::Migration
  def change
    add_column :recipes, :time_units, :string
  end
end
