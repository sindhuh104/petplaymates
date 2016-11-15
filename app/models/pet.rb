class Pet < ApplicationRecord
  belongs_to :user
  has_many :pet_bookings
  has_many :bookings, through: :pet_bookings
    
     mount_uploader :picture, PetProfilePictureUploader 

  validates :name, :age, :breed, :size, :availability, presence: true 

  extend FriendlyId
  friendly_id :name, use: :slugged 
  # name can be replaced by breed 

  def self.with_picture
  	where('picture IS NOT NULL')
  end 
end
