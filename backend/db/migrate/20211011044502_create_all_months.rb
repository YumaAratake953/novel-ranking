class CreateAllMonths < ActiveRecord::Migration[6.1]
  def change
    create_table :all_months do |t|
      t.string :title
      t.text :novel_url
      t.string :author
      t.text :author_url
      t.text :description
      t.string :peges
      t.string :words
      t.string :kinds
      t.string :point
      t.string :tag0
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5
      t.string :tag6
      t.string :tag7
      t.string :tag8
      t.string :tag9
      t.string :tag10
      t.string :tag11
      t.string :tag12
      t.string :tag13
      t.string :tag14
      t.string :tag15
      t.string :tag16
      t.string :tag17

      t.timestamps
    end
  end
end
