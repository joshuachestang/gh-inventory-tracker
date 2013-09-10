class InventoryChecks < ActiveRecord::Migration
  def change
    create_table :inventory_checks do |t|
    	t.integer :user_id
    	t.string :beginning_or_end
    	t.string :shift
    	t.string :forty_mg_lot_number
    	t.integer :forty_mg_box_inventory
    	t.integer :forty_mg_bottle_inventory
    	t.decimal :forty_mg_open_bottle_inventory, :precision => 8, :scale => 2
    	t.decimal :forty_mg_tablet_count, :precision => 8, :scale => 2
    	t.decimal :forty_mg_total_inventory, :precision => 8, :scale => 2
    	t.string :five_mg_lot_number
    	t.integer :five_mg_box_inventory
    	t.integer :five_mg_bottle_inventory
    	t.decimal :five_mg_open_bottle_inventory, :precision => 8, :scale => 2
    	t.decimal :five_mg_tablet_count, :precision => 8, :scale => 2
    	t.decimal :five_mg_total_inventory, :precision => 8, :scale => 2
    	t.decimal :total_inventory_count, :precision => 8, :scale => 2
        t.decimal :total_forty_milligram_count, :precision => 8, :scale => 2
        t.decimal :total_five_milligram_count, :precision => 8, :scale => 2
	
      t.timestamps
    end
  end
end
