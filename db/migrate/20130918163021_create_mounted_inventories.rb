class CreateMountedInventories < ActiveRecord::Migration
  def change
    create_table :mounted_inventories do |t|
      t.string :lot_number
      t.integer :total_mg, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
