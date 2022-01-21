class ChangeSiteyear < ActiveRecord::Migration[6.1]
  def change
    remove_column :site1_years, :created_at
    remove_column :site1_years, :updated_at
    remove_column :site2_years, :created_at
    remove_column :site2_years, :updated_at
    remove_column :site3_years, :created_at
    remove_column :site3_years, :updated_at
  end
end
