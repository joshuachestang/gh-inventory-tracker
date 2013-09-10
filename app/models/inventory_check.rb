class InventoryCheck < ActiveRecord::Base
	attr_accessible :user_id, :beginning_or_end, :shift, :forty_mg_lot_number, 
	:forty_mg_box_inventory, :forty_mg_bottle_inventory, :forty_mg_open_bottle_inventory, 
	:forty_mg_tablet_count, :forty_mg_total_inventory, :five_mg_lot_number, 
	:five_mg_box_inventory, :five_mg_bottle_inventory, :five_mg_open_bottle_inventory, 
	:five_mg_tablet_count, :five_mg_total_inventory, :total_inventory_count

	before_validation :sum_milligram_totals

	belongs_to :user
	

	validates_presence_of :user_id, :forty_mg_lot_number, 
	:forty_mg_box_inventory, :forty_mg_bottle_inventory, :forty_mg_open_bottle_inventory, 
	:forty_mg_tablet_count, :forty_mg_total_inventory, :five_mg_lot_number, 
	:five_mg_box_inventory, :five_mg_bottle_inventory, :five_mg_open_bottle_inventory, 
	:five_mg_tablet_count, :five_mg_total_inventory, :total_inventory_count


	def calculate_forty_mg_total
		((self.forty_mg_box_inventory * 600) + (self.forty_mg_bottle_inventory * 100) + self.forty_mg_open_bottle_inventory) * 40
	end

	def calculate_five_mg_total
		((self.five_mg_box_inventory * 600) + (self.five_mg_bottle_inventory * 100) + self.five_mg_open_bottle_inventory) * 40
	end

	def calculate_tablets_total
		calculate_forty_mg_total + calculate_five_mg_total
	end

	def sum_milligram_totals
		self.forty_mg_total_inventory = calculate_forty_mg_total
		self.five_mg_total_inventory = calculate_five_mg_total
		self.total_inventory_count = calculate_tablets_total
		self.forty_mg_tablet_count = calculate_forty_mg_total
		self.five_mg_tablet_count = calculate_five_mg_total
	end


end
