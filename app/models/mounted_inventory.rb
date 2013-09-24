class MountedInventory < ActiveRecord::Base
  attr_accessible :lot_number, :total_mg, :user_id

  belongs_to :user

  validates :lot_number, :total_mg, :user_id, presence: true
end
