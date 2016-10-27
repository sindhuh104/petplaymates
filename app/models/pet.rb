class Pet < ApplicationRecord
  belongs_to :user
     mount_uploader :picture, PetProfilePictureUploader 

  validates :name, :age, :breed, :size, :availability, presence: true 

  extend FriendlyId
  friendly_id :name, use: :slugged 
  # name can be replaced by breed 
end
