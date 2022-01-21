class CreateSite1Years < ActiveRecord::Migration[6.1]
  def change
    create_table :site1_years do |t|
      t.string :title
      t.text :novel_url
      t.string :author
      t.text :author_url
      t.text :description
      t.string :peges
      t.string :words
      t.string :kinds
      t.string :point
      t.text :tag0
      t.text :tag1
      t.text :tag2
      t.text :tag3
      t.text :tag4
      t.text :tag5
      t.text :tag6
      t.text :tag7
      t.text :tag8
      t.text :tag9
      t.text :tag10

      t.timestamps
    end
  end
end
