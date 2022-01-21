class ChengeColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :site1s, :created_at
    remove_column :site1s, :updated_at

  end
end
