class ChangeSites < ActiveRecord::Migration[6.1]
  def change
    add_column :site1_days, :point, :integer
    add_column :site1_months, :point, :integer
    add_column :site2_days, :point, :integer
    add_column :site2_months, :point, :integer
    add_column :site3_days, :point, :integer
    add_column :site3_months, :point, :integer
  end
end
