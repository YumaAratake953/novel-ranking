class AddSite1sTags < ActiveRecord::Migration[6.1]
  def change
    add_column :site1s, :tag10, :string
  end
end
