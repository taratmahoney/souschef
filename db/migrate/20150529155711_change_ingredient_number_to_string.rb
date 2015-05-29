class ChangeIngredientNumberToString < ActiveRecord::Migration
  def change
    change_column :ingredients, :number, :string
  end
end
