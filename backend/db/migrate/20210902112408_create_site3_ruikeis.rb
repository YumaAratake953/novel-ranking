class CreateSite3Ruikeis < ActiveRecord::Migration[6.1]
  def change
    create_table :site3_ruikeis do |t|
      t.string :title
      t.text :novel_url
      t.string :author
      t.text :author_url
      t.text :description
      t.integer :peges
      t.integer :words
      t.string :kinds
      t.integer :points
      t.string :last_up
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
