ActiveAdmin.register MountedInventory do
  index do                            
    column :user_id
    column :created_at 
    column :total_mg
    column :lot_number                          
    default_actions                   
  end                                 

  filter :user_id                      
 
end