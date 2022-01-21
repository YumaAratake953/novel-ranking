class ChangeSite < ActiveRecord::Migration[6.1]
  def change
    remove_column :site1_days, :created_at
    remove_column :site1_days, :updated_at
    remove_column :site1_months, :created_at
    remove_column :site1_months, :updated_at
    remove_column :site1_ruikeis, :created_at
    remove_column :site1_ruikeis, :updated_at
    remove_column :site2_days, :created_at
    remove_column :site2_days, :updated_at
    remove_column :site2_months, :created_at
    remove_column :site2_months, :updated_at
    remove_column :site2_ruikeis, :created_at
    remove_column :site2_ruikeis, :updated_at
    remove_column :site3_days, :created_at
    remove_column :site3_days, :updated_at
    remove_column :site3_months, :created_at
    remove_column :site3_months, :updated_at
    remove_column :site3_ruikeis, :created_at
    remove_column :site3_ruikeis, :updated_at
  end
end
