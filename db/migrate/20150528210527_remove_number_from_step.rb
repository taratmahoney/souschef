class RemoveNumberFromStep < ActiveRecord::Migration
  def change
    remove_column :steps, :number
  end
end
