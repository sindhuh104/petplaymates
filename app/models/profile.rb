class Profile < ApplicationRecord
  belongs_to :user
   mount_uploader :picture, ProfilePictureUploader 
  validates :first_name, :last_name, :street, :suburb, :postcode, :phone, presence: true

end
