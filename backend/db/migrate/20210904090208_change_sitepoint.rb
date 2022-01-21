class ChangeSitepoint < ActiveRecord::Migration[6.1]
  def change
    change_column :site1_days, :point, :string
    change_column :site1_months, :point, :string
    change_column :site2_days, :point, :string
    change_column :site2_months, :point, :string
    change_column :site3_days, :point, :string
    change_column :site3_months, :point, :string
  end
end
