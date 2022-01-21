class ChengeColumn2 < ActiveRecord::Migration[6.1]
  def change
    rename_column :site1s, :detail, :description
    rename_column :site1s, :last_update, :last_up
  end
end
