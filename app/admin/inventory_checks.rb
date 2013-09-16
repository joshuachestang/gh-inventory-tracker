ActiveAdmin.register InventoryCheck do
  index do                            
    column :user_id 
    column :created_at 
    column :forty_mg_lot_number 
    column :five_mg_lot_number
    column :forty_mg_total_inventory
    column :five_mg_total_inventory
    column :total_inventory_count                            
    default_actions                   
  end                                 

  filter :user_id                      
 
end
