class AddContentToStepModel < ActiveRecord::Migration
  def change
    add_column :steps, :content, :text
  end
end
