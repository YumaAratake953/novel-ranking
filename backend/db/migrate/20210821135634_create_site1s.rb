class CreateSite1s < ActiveRecord::Migration[6.1]
  def change
    create_table :site1s do |t|
      t.string :title
      t.text :novel_url
      t.string :author
      t.text :author_url
      t.text :detail
      t.string :peges
      t.string :words
      t.string :kinds
      t.string :points
      t.string :update
      t.text :tags

      t.timestamps
    end
  end
end
