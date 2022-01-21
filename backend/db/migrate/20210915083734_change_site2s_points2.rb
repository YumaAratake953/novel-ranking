class ChangeSite2sPoints2 < ActiveRecord::Migration[6.1]
  def change
    change_column :site1_ruikeis, :points, :string
    change_column :site1_ruikeis, :peges, :string
    change_column :site1_ruikeis, :words, :string
    change_column :site2_ruikeis, :peges, :string
    change_column :site2_ruikeis, :words, :string
    change_column :site3_ruikeis, :points, :string
    change_column :site3_ruikeis, :peges, :string
    change_column :site3_ruikeis, :words, :string
  end
end
