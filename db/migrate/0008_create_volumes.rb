class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.integer :no
      t.string :title

      t.timestamps null: false
    end
  end
end
