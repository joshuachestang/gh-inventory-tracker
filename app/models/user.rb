class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :user_type, :first_name, :last_name
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :inventory_checks
  has_many :mounted_inventories
  
  def name
  	self.first_name + " " + self.last_name
  end
end
