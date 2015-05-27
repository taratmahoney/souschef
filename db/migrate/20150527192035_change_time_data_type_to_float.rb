class ChangeTimeDataTypeToFloat < ActiveRecord::Migration
  def change
    change_column :recipes, :time, :float
  end
end
