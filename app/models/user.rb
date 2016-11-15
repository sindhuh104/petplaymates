class User < ApplicationRecord
  has_one :profile
  has_many :pets 
  has_many :bookings
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_role
   	def assign_role 	
   		# self.assign_role would be an instance method 
   		if user_type == 'owner'
   			add_role :admin 
      else 
        add_role :walker
   		end
   	end 
end
