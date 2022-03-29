class ChangeSite13sDays < ActiveRecord::Migration[6.1]
  def change
    change_column :site3_days, :tag0, :string
    change_column :site3_days, :tag1, :string
    change_column :site3_days, :tag2, :string
    change_column :site3_days, :tag3, :string
    change_column :site3_days, :tag4, :string
    change_column :site3_days, :tag5, :string
    change_column :site3_days, :tag6, :string
    change_column :site3_days, :tag7, :string
    change_column :site3_days, :tag8, :string
    change_column :site3_days, :tag9, :string
    change_column :site3_days, :tag10, :string
    change_column :site3_days, :peges, :string
    change_column :site3_days, :words, :string
  end
end
