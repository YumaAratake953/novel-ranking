class CangeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :site1s, :update, :last_update
  end
end
