class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :site1s, :tag0, :string
    add_column :site1s, :tag1, :string
    add_column :site1s, :tag2, :string
    add_column :site1s, :tag3, :string
    add_column :site1s, :tag4, :string
    add_column :site1s, :tag5, :string
    add_column :site1s, :tag6, :string
    add_column :site1s, :tag7, :string
    add_column :site1s, :tag8, :string
    add_column :site1s, :tag9, :string
    remove_column :site1s, :tags, :string

  end
end
