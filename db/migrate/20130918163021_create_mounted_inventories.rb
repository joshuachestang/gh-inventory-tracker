class CreateMountedInventories < ActiveRecord::Migration
  def change
    create_table :mounted_inventories do |t|
      t.string :lot_number
      t.integer :total_mg, :precision => 8, :scale => 2
      t.integer :user_id
      t.timestamps
    end
  end
end
