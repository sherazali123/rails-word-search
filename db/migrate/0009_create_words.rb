class CreateWords < ActiveRecord::Migration
  def up
    create_table :words do |t|
      t.string :title
      t.text :description
      t.belongs_to :volumes, index: true
      t.boolean :active
      t.string :attachment

      t.timestamps null: false
    end
  end

  def down
    drop_table :words
  end
end
