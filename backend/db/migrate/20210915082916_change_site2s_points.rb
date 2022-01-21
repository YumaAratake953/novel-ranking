class ChangeSite2sPoints < ActiveRecord::Migration[6.1]
  def change
    change_column :site2_ruikeis, :points, :string
  end
end
